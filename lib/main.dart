import 'package:NoteApp/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const NoteApp(),
  );
}

class NoteApp extends StatelessWidget {
  const NoteApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: NoteListScreen(),
    );
  }
}
