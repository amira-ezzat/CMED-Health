import 'dart:isolate';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:permission_handler/permission_handler.dart';

class DownloadScreen extends StatefulWidget {
  @override
  _DownloadScreenState createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  late String _taskId;
  String _progress = '0';

  @override
  void initState() {
    super.initState();
    FlutterDownloader.registerCallback(downloadCallback as DownloadCallback);
  }

  static void downloadCallback(String id, int status, int progress) {
    SendPort? send = IsolateNameServer.lookupPortByName('downloader_send_port');
    SendPort? sendPort; // Declare sendPort variable
    if (send != null) {
      // Assign the non-null SendPort to the sendPort variable
      sendPort = send;
    }
  }


  Future<void> _startDownload() async {
    final status = await Permission.storage.request();
    if (status.isGranted) {
      final taskId = await FlutterDownloader.enqueue(
        url: 'https://file-examples.com/storage/feaade38c1651bd01984236/2017/04/file_example_MP4_1920_18MG.mp4',
        savedDir: '/storage/emulated/0/Download',
        showNotification: true,
        openFileFromNotification: true,
      );
      setState(() {
        _taskId = taskId!;
      });
    } else {
      print('Permission denied');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Download File'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: _startDownload,
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.lightGreen // Text color of button
              ),
              child: Text('Download',
              ),
            ),
            SizedBox(height: 20),
            Text('Download Progress: $_progress%'),
          ],
        ),
      ),
    );
  }
}