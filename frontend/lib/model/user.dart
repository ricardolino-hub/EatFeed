import 'package:google_sign_in/google_sign_in.dart';

class UserModel {
  String name;
  String profilePhoto;
  String email;
  String uid;

  UserModel(
      {required this.name, required this.profilePhoto, required this.email, required this.uid});

  Map<String, dynamic> toJson() => {
        "name": name,
        "profilePhoto": profilePhoto,
        "email": email,
        "uid": uid,
      };

  static UserModel fromGoogleUser(GoogleSignInAccount user) {
    return UserModel(
        name: user.displayName!, profilePhoto: user.photoUrl!, email: user.email, uid: user.id);
  }
}
