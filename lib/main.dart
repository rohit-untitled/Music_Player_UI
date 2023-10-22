import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music_player/song_page.dart';

void main() {
  runApp(const MyApp());
  // SystemChrome.setEnabledSystemUIOverlays([]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SongPage(),
    );
  }
}
