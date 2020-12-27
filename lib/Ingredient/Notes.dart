class Notes {
  List<Note> _notes;

  Notes.initializeNotes() {
    _notes = List<Note>();
    _notes.add(
        Note('แป้งสาลีอเนกประสงค์', 'แป้งสาลีอเนกประสงค์ 160 กรัม', false));
    _notes.add(Note('ผงโกโก้', 'ผงโกโก้ 15 กรัม', false));
    _notes.add(Note('เกลือป่น', 'เกลือป่น ¼ ช้อนชา', false));
    _notes.add(Note('เนยสดชนิดเค็ม', 'เนยสดชนิดเค็ม 130 กรัม', false));
    _notes.add(Note('นมข้นจืด', 'นมข้นจืด 125 มิลลิลิตร', false));
    _notes.add(Note('น้ำ', 'น้ำ 125 มิลลิลิตร', false));
    _notes.add(Note('ไข่ไก่', 'ไข่ไก่ 4 ฟอง', false));
    _notes.add(Note('ผงฟู', 'ผงฟู 1 ช้อนชา', false));
    _notes.add(Note('กลิ่นวานิลลา', 'กลิ่นวานิลลา 1 ช้อนชา', false));
    _notes.add(Note('ดาร์ก ช็อกโกแลต คอมพาวด์',
        'ดาร์ก ช็อกโกแลต คอมพาวด์ 100 กรัม', false));
    _notes.add(Note('วิปปิงครีมตีฟู', 'วิปปิงครีมตีฟู 350 กรัม', false));
    _notes.add(Note('ซอสช็อกโกแลต และผลไม้ตามชอบ',
        'ซอสช็อกโกแลต และผลไม้ตามชอบ(กีวี , สตอเบอรี่) ', false));
  }

  List<Note> get getNotes => _notes;
}

class Note {
  String _title;
  String _noteContent;
  bool _noteRead;

  Note(this._title, this._noteContent, this._noteRead);

  String get getTitle => _title;
  String get getNoteContent => _noteContent;
  bool get getReadState => _noteRead;
  set setReadState(bool readState) => this._noteRead = readState;
}
