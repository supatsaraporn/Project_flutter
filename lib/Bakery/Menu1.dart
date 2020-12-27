import 'package:flutter/material.dart';

class Menu1 extends StatefulWidget {
  @override
  _Menu1State createState() => _Menu1State();
}

class _Menu1State extends State<Menu1> {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Text(
                    'สูตรเบเกอรี่ | ชูครีมช็อกโกแลต',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'ชูครีมช็อกโกแลต” ไส้แน่นๆ อร่อย หอม นุ่ม โดนใจสายหวาน',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          FavoriteWidget(),
        ],
      ),
    );

    return MaterialApp(
        home: Scaffold(
      body: Column(
        children: [
          Image.asset(
            'images/menu1.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          titleSection,
          textSection,
          Container(
            child: ElevatedButton(
              child: Text('ส่วนผสม'),
              onPressed: () {
                Navigator.pushNamed(context, '/int1');
              },
            ),
          ),
        ],
      ),
    ));
  }
}

Widget textSection = Container(
  padding: const EdgeInsets.all(20),
  child: Text(
    'ขั้นตอนการทำ'
    '1. ผสมแป้งสาลีอเนกประสงค์ ผงโกโก้ และเกลือป่น เข้าด้วยกัน เตรียมไว้'
    '2. ใส่เนยสดชนิดเค็ม และน้ำ ลงในภาชนะ นำขึ้นตั้งไฟ ต้มใช้ไฟแรง คนจนส่วนผสมเดือด'
    '3. เติมส่วนผสมแป้งที่เตรียมไว้ คนเร็วๆ จนส่วนผสมสุกล่อนจากภาชนะ ปิดไฟ'
    '4. ใส่ส่วนผสมแป้งลงในอ่างผสม ใช้ตะกร้อไฟฟ้าตีด้วยความเร็วปานกลางจนส่วนผสมอุ่น'
    'เติมไข่ไก่ทีละฟองจนครบ ลดความเร็วต่ำ ใส่ผงฟู ตีผสมจนเข้ากันดี ปิดเครื่อง'
    '5. ตักใส่ถุงบีบ บีบลงบนถาดอบขนาดตามต้องการ นำเข้าอบที่อุณหภูมิ 400 องศาฟาเรนไฮต์'
    'หรือ 200 องศาเซลเซียส ประมาณ 15-20 นาที หรือจนกระทั่งสุก เตรียมไว้',
    softWrap: true,
  ),
);

class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 1;
  // ···
  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            padding: EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            icon: (_isFavorited ? Icon(Icons.star) : Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: Container(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }
}
