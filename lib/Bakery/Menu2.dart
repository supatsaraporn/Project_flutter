import 'package:flutter/material.dart';

class Menu2 extends StatefulWidget {
  @override
  _Menu2State createState() => _Menu2State();
}

class _Menu2State extends State<Menu2> {
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
                    'สูตรเบเกอรี่ | เค้กหน้านิ่มช็อกโกแลต',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'ชวนสายหวานที่โปรดปรานช็อกโกแลต มาลองทำ “เค้กหน้านิ่มช็อกโกแลต" ',
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
            'images/menu2.jpg',
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
    '1. ผสมแป้งสาลีทำเค้ก เบกกิงโซดา เกลือป่น น้ำตาลทราย และผงโกโก้ เข้าด้วยกัน เตรียมไว้'
    '2. คนผสมนมข้นจืด ไข่แดง น้ำ และน้ำมันพืช ด้วยตะกร้อมือเข้าด้วยกัน เติมส่วนผสมแป้ง คนจนเป็นเนื้อเดียวกัน เตรียมไว้'
    '3. ตีไข่ขาว กับครีมออฟทาร์ทาร์ ด้วยหัวตีรูปตะกร้อด้วยความเร็วสูงสุด 30 วินาที เติมน้ำตาลทราย ตีต่อจนกระทั่งไข่ขาวตั้งยอด ปิดเครื่อง'
    '4. คนตะล่อมไข่ขาวกับส่วนผสมแป้งจนเป็นเนื้อเดียวกัน เทลงในพิมพ์ เกลี่ยหน้าให้เรียบ นำเข้าอบที่อุณหภูมิ 400 องศาฟาเรนไฮต์ หรือ 200 องศาเซลเซียส ประมาณ 10-12 นาที กดเค้กด้วยพิมพ์กดเค้กให้ได้ 4 ชิ้น เตรียมไว้',
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
