import '../models/characters.dart';
import '../web_services/characters_web_services.dart';

class CharactersRepository {
  final CharactersWebServices charactersWebServices;

  CharactersRepository(this.charactersWebServices);

  /*Fetches all characters from the web service and maps them to a list
   of Character objects*/

  Future<List<Character>> getAllCharacters() async {
    //Fetch character data from web services
    final characters = await charactersWebServices.getAllCharacters();

    //Map the raw character data to Character objects using fromJson constructor
    return characters
        .map((character) => Character.fromJson(character))
        .toList();
  }
}
