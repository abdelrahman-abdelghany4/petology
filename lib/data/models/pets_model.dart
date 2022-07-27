class PetsModel {
  List<Pets>? pets;

  PetsModel.fromJson(List<dynamic> pets) {
    this.pets = pets
        .map(
          (p) => Pets.fromJson(p),
        )
        .toList();
  }
}

class Pets {
  late final int id;
  late final String name;
  late final List<String> image;
  late final int year;
  late final int month;
  late final String size;
  late final String breed;
  late final bool gender;
  late final String hairLength;
  late final String color;
  late final String careBehavior;
  late final bool houseTrained;
  late final String description;
  late final String location;
  late final String phone;
  late final bool vaccinated;
  late final int categoryId;
  late final int userId;
  late final User user;
  late final String category;

  Pets.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'].cast<String>();
    year = json['year'];
    month = json['month'];
    size = json['size'];
    breed = json['breed'];
    gender = json['gender'];
    hairLength = json['hairLength'];
    color = json['color'];
    careBehavior = json['careBehavior'];
    houseTrained = json['houseTrained'];
    description = json['description'];
    location = json['location'];
    phone = json['phone'];
    vaccinated = json['vaccinated'];
    categoryId = json['categoryId'];
    userId = json['userId'];
    user = (json['user'] != null ? User.fromJson(json['user']) : null)!;
    category = json['category'];
  }
}

class User {
  String? firstName;
  String? lastName;

  User({this.firstName, this.lastName});

  User.fromJson(Map<String, dynamic> json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    return data;
  }
}
