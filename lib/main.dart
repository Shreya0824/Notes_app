import 'package:flutter/material.dart';
import 'package:notes_app/model/note_operation.dart';
import 'package:notes_app/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NotesOperation>(
      create: (context) => NotesOperation(),
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}

