import 'package:flutter/material.dart';
import 'package:project_flutter/Ingredient/Notes.dart';

class IngredientPage extends StatefulWidget {
  Note selectedNote;

  IngredientPage(this.selectedNote);

  @override
  State<StatefulWidget> createState() {
    return IngredientPageState(selectedNote);
  }
}

class IngredientPageState extends State<IngredientPage> {
  Note selectedNote;

  IngredientPageState(this.selectedNote);

  _handleReadCheckbox(bool readStatus) {
    this.setState(() {
      selectedNote.setReadState = readStatus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedNote.getTitle),
        leading: MaterialButton(
          onPressed: () {
            Navigator.pop(context, selectedNote.getReadState);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue[800],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                selectedNote.getNoteContent,
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'พร้อมสำหรับการทำ?',
                  style: TextStyle(fontSize: 20.0),
                ),
                Checkbox(
                    value: selectedNote.getReadState,
                    onChanged: _handleReadCheckbox)
              ],
            )
          ],
        ),
      ),
    );
  }
}
