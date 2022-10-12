import 'package:frontend/view/pages/profile/profile.dart';
import 'package:frontend/view/pages/camera/camera.dart';
import 'package:frontend/view/pages/feed/feed.dart';
import 'package:frontend/view/pages/filter/filter.dart';
import 'package:frontend/view/pages/settings/settings.dart';

List pages = [
  FeedScreen(),
  FilterScreen(),
  const CameraScreen(),
  ProfileScreen(),
  SettingsScreen(),
];
