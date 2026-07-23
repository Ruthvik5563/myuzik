import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: SafeArea(child: MainScaffold()));
  }
}

class MainScaffold extends StatelessWidget {
  const MainScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          onPressed: () {},
          child: Image.asset(
            'assets/images/add_music_temp.png',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
      ),
      bottomNavigationBar: MainNavBar(),
    );
  }
}

class MainNavBar extends BottomNavigationBar {
  MainNavBar({super.key})
    : super(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.playlist_play),
            label: 'playlists',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'fetch song'),
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud_circle_outlined),
            label: 'A-list',
          ),
        ],
      );
}
