class Character {
  final String name;
  final String actor;
  final String house;
  final String image;
  final String species;
  final String gender;
  final String dateOfBirth;
  final int yearOfBirth;
  final bool wizard;
  final String ancestry;
  final String eyeColour;
  final String hairColour;
  final Map<String, dynamic>? wand;
  final String patronus;
  final bool hogwartsStudent;
  final bool hogwartsStaff;
  final bool alive;

  Character({
    required this.name,
    required this.actor,
    required this.house,
    required this.image,
    required this.species,
    required this.gender,
    required this.dateOfBirth,
    required this.yearOfBirth,
    required this.wizard,
    required this.ancestry,
    required this.eyeColour,
    required this.hairColour,
    this.wand,
    required this.patronus,
    required this.hogwartsStudent,
    required this.hogwartsStaff,
    required this.alive,
  });

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
      name: json['name'] ?? '',
      actor: json['actor'] ?? '',
      house: json['house'] ?? '',
      image: json['image'] ?? '',
      species: json['species'] ?? '',
      gender: json['gender'] ?? '',
      dateOfBirth: json['dateOfBirth'] ?? '',
      yearOfBirth: json['yearOfBirth'] ?? 0,
      wizard: json['wizard'] ?? false,
      ancestry: json['ancestry'] ?? '',
      eyeColour: json['eyeColour'] ?? '',
      hairColour: json['hairColour'] ?? '',
      wand: json['wand'] as Map<String, dynamic>? ?? {},
      patronus: json['patronus'] ?? '',
      hogwartsStudent: json['hogwartsStudent'] ?? false,
      hogwartsStaff: json['hogwartsStaff'] ?? false,
      alive: json['alive'] ?? false,
    );
  }
}
