import 'package:flutter/material.dart';

import '../model/character.dart';

class CharacterDetailScreen extends StatelessWidget {
  final Character character;

  CharacterDetailScreen({required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(character.name)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(character.image),
            SizedBox(height: 10),
            ListTile(
              title: Text('Species'),
              subtitle: Text(character.species),
            ),
            ListTile(
              title: Text('Gender'),
              subtitle: Text(character.gender),
            ),
            ListTile(
              title: Text('Date of Birth'),
              subtitle: Text(character.dateOfBirth),
            ),
            ListTile(
              title: Text('Year of Birth'),
              subtitle: Text(character.yearOfBirth.toString()),
            ),
            ListTile(
              title: Text('Wizard'),
              subtitle: Text(character.wizard.toString()),
            ),
            ListTile(
              title: Text('Ancestry'),
              subtitle: Text(character.ancestry),
            ),
            ListTile(
              title: Text('Eye Colour'),
              subtitle: Text(character.eyeColour),
            ),
            ListTile(
              title: Text('Hair Colour'),
              subtitle: Text(character.hairColour),
            ),
            ListTile(
              title: Text('Wand'),
              subtitle: Text(
                  '${character.wand?['wood']}, ${character.wand?['core']}, ${character.wand?['length']} inches'),
            ),
            ListTile(
              title: Text('Patronus'),
              subtitle: Text(character.patronus),
            ),
            ListTile(
              title: Text('Hogwarts Student'),
              subtitle: Text(character.hogwartsStudent.toString()),
            ),
            ListTile(
              title: Text('Hogwarts Staff'),
              subtitle: Text(character.hogwartsStaff.toString()),
            ),
            ListTile(
              title: Text('Alive'),
              subtitle: Text(character.alive.toString()),
            ),
          ],
        ),
      ),
    );
  }
}
