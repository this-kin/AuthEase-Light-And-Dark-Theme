class BlogModel {
  final String? id;
  final String? body;
  final String? title;
  final String? subtitle;
  final String? dateCreated;

  BlogModel({
    this.id,
    this.body,
    this.title,
    this.subtitle,
    this.dateCreated,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['id'] = id;
    json['body'] = body;
    json['title'] = title;
    json['subTitle'] = subtitle;
    json['dateCreated'] = dateCreated;

    return json;
  }

  factory BlogModel.fromJson(Map<String?, dynamic> json) {
    return BlogModel(
      id: json['id'],
      body: json['body'],
      title: json['title'],
      subtitle: json['subTitle'],
      dateCreated: json["dateCreated"],
    );
  }
}
