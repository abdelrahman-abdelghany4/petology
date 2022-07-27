class FeedModel {
  FeedModel({
    required this.title,
    required this.body,
  });
  late final String title;
  late final String body;

  FeedModel.fromJson(Map<String, dynamic> json){
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['title'] = title;
    _data['body'] = body;
    return _data;
  }
}