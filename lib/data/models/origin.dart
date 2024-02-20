class Origin {
  late String originName;

  late String originUrl;

  Origin.fromJson(Map<String, dynamic> json) {
    originName = json["name"];
    originUrl = json["url"];
  }
}
