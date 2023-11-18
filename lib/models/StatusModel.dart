
class StatusesModel {
  String name;
  String profileImage;
  List<StatusModel> statuses;
  bool viewed = false;

   StatusesModel({
    required this.name,
    required this.profileImage,
    required this.statuses,
     viewed,
  });

}

class StatusModel{
  String desc;
  String image;

   StatusModel({
    required this.desc,
    required this.image
  });
}