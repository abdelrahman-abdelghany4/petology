class AuthModel {
  AuthModel({
    required this.accessToken,
  });
  late final String accessToken;

  AuthModel.fromJson(Map<String, dynamic> json){
    accessToken = json['accessToken'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['accessToken'] = accessToken;
    return data;
  }
}