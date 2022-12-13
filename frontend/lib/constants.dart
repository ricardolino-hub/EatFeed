import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:frontend/view/pages/profile/profile.dart';
import 'package:frontend/view/pages/camera/camera.dart';
import 'package:frontend/view/pages/feed/feed.dart';
import 'package:frontend/view/pages/filter/filter.dart';
import 'package:frontend/view/pages/settings/settings.dart';
import 'package:firebase_storage/firebase_storage.dart';

List pages = [
  FeedScreen(),
  FilterScreen(),
  const CameraScreen(),
  ProfileScreen(),
  SettingsScreen(),
];

var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;
