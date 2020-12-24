import 'package:flutter/material.dart';
import 'package:notes_app/model/note_operation.dart';
import 'package:provider/provider.dart';

class AddScreen extends StatefulWidget {
  @override
  _AddScreenState createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  @override
  Widget build(BuildContext context) {
    String titleText;
    String descriptionText;

    return Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
        title: Text('Add Notes'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
              hintText: 'Enter Title',
              hintStyle: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
                onChanged : (value){
                titleText=value;
                }

            ),

            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter description',
                  hintStyle: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
                style: TextStyle(fontSize: 20, color: Colors.white),
                  onChanged : (value){
                    descriptionText=value;
                  }
              ),
            ),
            FlatButton(
              onPressed: (){
            Provider.of<NotesOperation>(context,listen: false).AddNewNote(titleText,descriptionText);
            Navigator.pop(context);
            },
                color: Colors.white,
                child: Text('Add Note', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.lightBlue
                ),
                ),
            )
          ],
        ),
      ),
    );
  }
}
