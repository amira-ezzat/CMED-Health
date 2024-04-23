import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/character.dart';


class CharacterService {
  Future<List<Character>> fetchCharacters() async {
    final response = await http.get(
        Uri.parse('https://hp-api.onrender.com/api/characters')
    );
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((characterJson) => Character.fromJson(characterJson)).toList();
    } else {
      throw Exception('Failed to load characters');
    }
  }
}
