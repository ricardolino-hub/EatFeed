import 'dart:io';
import 'package:flutter/material.dart';
import 'package:frontend/view/pages/camera/confirmScreen.dart';
import 'package:image_picker/image_picker.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({Key? key}) : super(key: key);

  pickVideo(ImageSource src, BuildContext context) async {
    final video = await ImagePicker().pickVideo(source: src);
    if (video != null) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => ConfirmScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(35, 15, 35, 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              backgroundColor: const Color.fromARGB(0, 0, 0, 0),
              onPressed: (){},
              child: const Icon(Icons.file_upload_outlined, color: Colors.white,),
            ),
            FloatingActionButton(
              backgroundColor: const Color.fromARGB(0, 0, 0, 0),
              onPressed: (){},
              child: const Icon(Icons.video_camera_back, color: Colors.white,),
            ),
            FloatingActionButton(
              backgroundColor: const Color.fromARGB(0, 0, 0, 0),
              onPressed: (){},
              child: const Icon(Icons.mode_edit, color: Colors.white,),
            ),
          ],
        ),
      ),
    );
  }
}
