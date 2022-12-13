import 'package:flutter/material.dart';
import 'package:frontend/controller/google_sign_in.dart';
import 'package:provider/provider.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<GoogleSignInController>(context, listen: false);
    return Scaffold(
      body: const Center(
        child: Text('Feed'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(5),
        child: FloatingActionButton(
          child: const Icon(Icons.person),
          onPressed: () {
            provider.googleLogin();
          },
        ),
      ),
    );
  }
}
