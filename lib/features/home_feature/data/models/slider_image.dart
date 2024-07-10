class SliderModel {
  SliderModel({
      this.id, 
      this.image,});

  SliderModel.fromJson(dynamic json) {
    id = json['id'];
    image = json['image'];
  }
  num? id;
  String? image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['image'] = image;
    return map;
  }

}