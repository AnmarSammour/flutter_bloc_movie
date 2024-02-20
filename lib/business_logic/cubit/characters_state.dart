part of 'characters_cubit.dart';

@immutable
abstract class CharactersState {}

//Represents the initial state of the characters
class CharactersInitial extends CharactersState {}

//Represents the state when characters are successfully loaded
class CharactersLoaded extends CharactersState {
  //List of characters loaded
  final List<Character> characters;

  CharactersLoaded(this.characters);
}
