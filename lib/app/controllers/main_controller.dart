import 'package:get/get.dart';

class MainController extends GetxController {
  var likedProfiles = <int>[].obs;

  void toggleLike(int profileId) {
    if (likedProfiles.contains(profileId)) {
      likedProfiles.remove(profileId);
    } else {
      likedProfiles.add(profileId);
    }
  }

  bool isProfileLiked(int profileId) {
    return likedProfiles.contains(profileId);
  }
}
