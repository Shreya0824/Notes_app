import 'package:notes_app/model/note.dart';
import 'package:flutter/material.dart';


class NotesOperation extends ChangeNotifier{
  List<Note> _notes = new List<Note>();
  List<Note> get getnotes{
    return _notes;
  }

  void AddNewNote(String description, String title){
    Note note = Note(description, title);
    _notes.add(note);
    notifyListeners();
  }

}