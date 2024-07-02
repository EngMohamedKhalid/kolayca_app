class UserModel {
  UserModel({
      this.user, 
      this.token,});

  UserModel.fromJson(dynamic json) {
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    token = json['token'];
  }
  User? user;
  String? token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (user != null) {
      map['user'] = user?.toJson();
    }
    map['token'] = token;
    return map;
  }

}

class User {
  User({
      this.id, 
      this.name, 
      this.email, 
      this.phone, 
      this.dialcode, 
      this.countryName, 
      this.countryCode, 
      this.blocked, 
      this.emailVerified, 
      this.specialization, 
      this.image, 
      this.lastLoggedInAt, 
      this.createdAt,});

  User.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    dialcode = json['dialcode'];
    countryName = json['country_name'];
    countryCode = json['country_code'];
    blocked = json['blocked'];
    emailVerified = json['email_verified'];
    specialization = json['specialization'] != null ? Specialization.fromJson(json['specialization']) : null;
    image = json['image'];
    lastLoggedInAt = json['last_logged_in_at'];
    createdAt = json['created_at'];
  }
  num? id;
  String? name;
  String? email;
  String? phone;
  String? dialcode;
  String? countryName;
  String? countryCode;
  bool? blocked;
  bool? emailVerified;
  Specialization? specialization;
  dynamic image;
  String? lastLoggedInAt;
  String? createdAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['email'] = email;
    map['phone'] = phone;
    map['dialcode'] = dialcode;
    map['country_name'] = countryName;
    map['country_code'] = countryCode;
    map['blocked'] = blocked;
    map['email_verified'] = emailVerified;
    if (specialization != null) {
      map['specialization'] = specialization?.toJson();
    }
    map['image'] = image;
    map['last_logged_in_at'] = lastLoggedInAt;
    map['created_at'] = createdAt;
    return map;
  }

}

class Specialization {
  Specialization({
      this.id, 
      this.name, 
      this.createdAt,});

  Specialization.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    createdAt = json['created_at'];
  }
  num? id;
  String? name;
  String? createdAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['created_at'] = createdAt;
    return map;
  }

}