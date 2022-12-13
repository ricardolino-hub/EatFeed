import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:frontend/constants.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../model/user.dart';

class GoogleSignInController extends ChangeNotifier {
  final googleSignIn = GoogleSignIn();

  GoogleSignInAccount? _user;

  GoogleSignInAccount get user => _user!;

  Future googleLogin() async {
    final googleUser = await googleSignIn.signIn();
    if (googleUser == null) return;
    _user = googleUser;

    final googleAuth = await googleUser.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    await firebaseAuth.signInWithCredential(credential);

    UserModel userModel = UserModel(
        name: user.displayName!,
        profilePhoto: user.photoUrl!,
        email: user.email,
        uid: credential.toString());

    print(
        'name: ${userModel.name} / profilePhoto: ${userModel.profilePhoto} / email: ${userModel.email}');

    firestore.collection('users').doc(userModel.uid).set(userModel.toJson());

    notifyListeners();
  }
}
