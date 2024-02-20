import 'location.dart';
import 'origin.dart';

class Character {
  late int id;
  late String name;
  late String status;
  late String species;
  late String type;
  late String gender;
  late Origin origin;
  late Location location;
  late String image;
  late List<String> episode;
  late String url;
  late String created;

  Character.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    status = json['status'];
    species = json['species'];
    type = json['type'];
    gender = json['gender'];
    origin = (json["origin"] != null ? Origin.fromJson(json["origin"]) : null)!;
    location = (json["location"] != null
        ? Location.fromJson(json["location"])
        : null)!;
    image = json['image'];
    episode = List.castFrom<dynamic, String>(json['episode']);
    url = json['url'];
    created = json['created'];
  }
}
