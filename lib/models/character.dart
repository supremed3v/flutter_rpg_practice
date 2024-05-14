import 'package:flutter_rpg/models/skill.dart';
import 'package:flutter_rpg/models/stats.dart';
import 'package:flutter_rpg/models/vocation.dart';

class Character with Stats {
// Constructor
  Character({
    required this.name,
    required this.slogan,
    required this.vocation,
    required this.id,
  });

// Fields
  final Set<Skill> skills = {};
  final Vocation vocation;
  final String name;
  final String slogan;
  final String id;
  bool _isFav = false;

  // Getters
  bool get isFav => _isFav;

  void toggleIsFav() {
    _isFav = !_isFav;
  }

  void updateSkill(Skill skill) {
    skills.clear();
    skills.add(skill);
  }
}

// Dummy data

List<Character> characters = [
  Character(
      id: '1',
      name: 'Mario',
      slogan: 'It\'s a me, Mario!',
      vocation: Vocation.wizard),
  Character(
      id: '2',
      name: 'Luigi',
      slogan: 'Green Mario!',
      vocation: Vocation.raider),
  Character(
      id: '3',
      name: 'Peach',
      slogan: 'I\'m a princess!',
      vocation: Vocation.wizard),
  Character(
      id: '4',
      name: 'Toad',
      slogan: 'I\'m a mushroom!',
      vocation: Vocation.raider),
  Character(
      id: '5',
      name: 'Bowser',
      slogan: 'I\'m a turtle!',
      vocation: Vocation.junkie),
  Character(
      id: '6',
      name: 'Koopa',
      slogan: 'I\'m a turtle too!',
      vocation: Vocation.ninja),
];
