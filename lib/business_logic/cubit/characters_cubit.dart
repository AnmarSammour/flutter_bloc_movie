import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/models/characters.dart';
import '../../data/repository/characters_repository.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharactersRepository charactersRepository;
  List<Character> characters = [];

  CharactersCubit(this.charactersRepository) : super(CharactersInitial());
  //Fetches all characters and emits CharactersLoaded state
  //Returns the list of characters
  List<Character> getAllCharacters() {
    charactersRepository.getAllCharacters().then((character) {
      emit(CharactersLoaded(character));
      characters = character;
    });

    return characters;
  }
}
