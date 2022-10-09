import 'package:flutter/material.dart';
import 'package:frontend/constants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _pageIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_pageIdx],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (idx) {
            setState(() {
              _pageIdx = idx;
            });
          },
          currentIndex: _pageIdx,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home)),
            BottomNavigationBarItem(icon: Icon(Icons.filter_alt)),
            BottomNavigationBarItem(icon: Icon(Icons.linked_camera)),
            BottomNavigationBarItem(icon: Icon(Icons.person_sharp)),
            BottomNavigationBarItem(icon: Icon(Icons.settings_sharp)),
          ]),
    );
  }
}
