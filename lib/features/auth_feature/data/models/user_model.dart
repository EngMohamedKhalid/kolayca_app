class UserModel {
  UserModel({
      this.id, 
      this.name, 
      this.mobile, 
      this.email, 
      this.image, 
      this.role,});

  UserModel.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    mobile = json['mobile'];
    email = json['email'];
    image = json['image'];
    role = json['role'];
  }
  num? id;
  String? name;
  dynamic mobile;
  String? email;
  String? image;
  String? role;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['mobile'] = mobile;
    map['email'] = email;
    map['image'] = image;
    map['role'] = role;
    return map;
  }

}

class AllUserModel{
  UserModel ? user;
  String ? accessToken;

  AllUserModel.fromJson(dynamic json) {
    user = UserModel.fromJson(json['data']);
    accessToken = json['access_token'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['data'] = user?.toJson();
    map['access_token'] = accessToken;
    return map;
  }
}