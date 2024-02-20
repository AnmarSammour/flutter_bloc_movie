import 'package:dio/dio.dart';
import '../../constants/strings.dart';

class CharactersWebServices {
  late Dio dio;

  CharactersWebServices() {
    // Initialize Dio instance with base options
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 20),
    );

    dio = Dio(options);
  }

  Future<List<Map<String, dynamic>>> getAllCharacters() async {
    try {
      // Send a GET request to fetch character data
      Response response = await dio.get('character');

      // Print the response data for debugging purposes
      print(response.data.toString());

      // Convert response data to a list of character data
      return List<Map<String, dynamic>>.from(response.data['results']);
    } catch (e) {
      // Print any errors that occur during the request
      print(e.toString());

      // Return an empty list in case of an error
      return [];
    }
  }
}
