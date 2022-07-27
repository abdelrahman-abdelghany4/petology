class SelectionModel {
  SelectionModel({
    required this.breed,
    required this.ages,
    required this.size,
    required this.goodWith,
    required this.gender,
    required this.colors,
    required this.hairLength,
    required this.behaviour,
  });
  late final List<String> breed;
  late final List<String> ages;
  late final List<String> size;
  late final List<String> goodWith;
  late final Gender gender;
  late final List<String> colors;
  late final List<String> hairLength;
  late final List<String> behaviour;

  SelectionModel.fromJson(Map<String, dynamic> json){
    breed = List.castFrom<dynamic, String>(json['breed']);
    ages = List.castFrom<dynamic, String>(json['ages']);
    size = List.castFrom<dynamic, String>(json['size']);
    goodWith = List.castFrom<dynamic, String>(json['goodWith']);
    gender = Gender.fromJson(json['gender']);
    colors = List.castFrom<dynamic, String>(json['colors']);
    hairLength = List.castFrom<dynamic, String>(json['hairLength']);
    behaviour = List.castFrom<dynamic, String>(json['behaviour']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['breed'] = breed;
    _data['ages'] = ages;
    _data['size'] = size;
    _data['goodWith'] = goodWith;
    _data['gender'] = gender.toJson();
    _data['colors'] = colors;
    _data['hairLength'] = hairLength;
    _data['behaviour'] = behaviour;
    return _data;
  }
}

class Gender {
  Gender({
    required this.male,
    required this.female,
  });
  late final int male;
  late final int female;

  Gender.fromJson(Map<String, dynamic> json){
    male = json['male'];
    female = json['female'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['male'] = male;
    _data['female'] = female;
    return _data;
  }
}