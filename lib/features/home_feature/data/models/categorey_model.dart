class CategoreyModel {
  CategoreyModel({
      this.id, 
      this.title, 
      this.linkUrl, 
      this.image,});

  CategoreyModel.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    linkUrl = json['link_url'];
    image = json['image'];
  }
  num? id;
  String? title;
  dynamic linkUrl;
  String? image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['link_url'] = linkUrl;
    map['image'] = image;
    return map;
  }

}