import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/model/note.dart';
import 'package:notes_app/model/note_operation.dart';
import 'package:provider/provider.dart';
import 'package:notes_app/screens/add_screen.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => AddScreen()));
        },
        child: Icon(
          Icons.add,
          size:30,
          color: Colors.lightBlue,
        ),
      ),
      appBar: AppBar(
        title: Text('Notes'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Consumer<NotesOperation>(
        builder: (context , NotesOperation data, child){
          return ListView.builder(
              itemCount:data.getnotes.length,
            itemBuilder: (context,index){
                return NoteCard(data.getnotes[index]);
            }
          );
        }
      ),
    );
  }
}

class NoteCard extends StatelessWidget {
  final Note note ;
  NoteCard(this.note);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(15),
      height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15)
        ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(note.title , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          SizedBox(height: 5),
          Text(note.description , style: TextStyle(fontSize: 17),
          )],
      ),
    );
  }
}
