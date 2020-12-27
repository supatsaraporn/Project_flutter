import 'package:flutter/material.dart';
import 'package:project_flutter/Ingredient/Notes.dart';
import 'package:project_flutter/Ingredient/IngredientPage.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  List<Note> _notes;

  HomeScreenState() {
    _notes = Notes.initializeNotes().getNotes;
  }

  _handleDetailedViewData(int index) async {
    bool data = await Navigator.push(context,
        MaterialPageRoute(builder: (context) => IngredientPage(_notes[index])));
    this.setState(() {
      _notes[index].setReadState = data;
    });
  }

  _handleIconDisplay(int index) {
    bool readStatus = _notes[index].getReadState;
    return Icon(
      (readStatus ? Icons.check_circle : Icons.remove_circle),
      color: (readStatus) ? Colors.blue[800] : Colors.red,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ส่วนผสม (Ingredient)'),
        backgroundColor: Colors.blue[800],
      ),
      body: ListView.builder(
          itemCount: _notes.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.grey, width: 1.0))),
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(_notes[index].getTitle),
                    _handleIconDisplay(index)
                  ],
                ),
                onTap: () {
                  _handleDetailedViewData(index);
                },
              ),
            );
          }),
    );
  }
}
