import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter/material.dart';
import 'package:p1/task1/dawnliad_file.dart';
import 'package:p1/task2/screens/character_list.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterDownloader.initialize(debug: true);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Harry Potter Characters',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CharacterListScreen(),
    );
  }
}