class RecordedLessonModel {
  RecordedLessonModel({
      this.id, 
      this.linkUrl,});

  RecordedLessonModel.fromJson(dynamic json) {
    id = json['id'];
    linkUrl = json['link_url'];
  }
  num? id;
  String? linkUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['link_url'] = linkUrl;
    return map;
  }

}