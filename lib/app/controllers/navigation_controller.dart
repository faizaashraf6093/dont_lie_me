import 'package:dont_lie_me/app/views/chat/chat.dart';
import 'package:dont_lie_me/app/views/info/info.dart';
import 'package:dont_lie_me/app/views/profiles/profiles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../views/saved_profiles/saved_profiles.dart';

class NavigationController extends GetxController {
  final List<Widget> pages = [
    const ProfilesScreen(),
    const SavedProfilesScreen(),
    const ChatScreen(),
    const InfoScreen()
  ];
  var selectedIndex = 0.obs;
  void changeTabIndex(int index) {
    selectedIndex.value = index;
  }
}
