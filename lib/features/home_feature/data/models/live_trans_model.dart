class LiveTransModel {
  LiveTransModel({
      this.id, 
      this.title, 
      this.linkUrl,});

  LiveTransModel.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    linkUrl = json['link_url'];
  }
  num? id;
  String? title;
  String? linkUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['link_url'] = linkUrl;
    return map;
  }

}