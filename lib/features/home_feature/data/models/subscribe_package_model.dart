class SubscribePackageModel {
  SubscribePackageModel({
      this.id, 
      this.name, 
      this.linkUrl, 
      this.description, 
      this.price,});

  SubscribePackageModel.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    linkUrl = json['link_url'];
    description = json['description'];
    price = json['price'];
  }
  num? id;
  String? name;
  dynamic linkUrl;
  String? description;
  String? price;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['link_url'] = linkUrl;
    map['description'] = description;
    map['price'] = price;
    return map;
  }

}