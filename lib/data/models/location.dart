class Location{
  late String locationName;

  late String locationUrl;

  Location.fromJson(Map<String, dynamic> json) {
    locationName = json["name"];
    locationUrl = json["url"];
  }
}