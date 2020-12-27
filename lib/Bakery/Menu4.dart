import 'package:flutter/material.dart';

class Menu4 extends StatefulWidget {
  @override
  _Menu4State createState() => _Menu4State();
}

class _Menu4State extends State<Menu4> {
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
                    'สูตรเบเกอรี่ | บัตเตอร์เค้กช็อกโกแลตอัลมอนด์',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'บัตเตอร์เค้กช็อกโกแลตอัลมอนด์ เนื้อนุ้มนุ่ม อัลมอนด์เคลือบน้ำตาลกรุบกรอบ ทำขายได้ไม่ยาก แต่อร่อยฟินมากขอบอก!',
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
            'images/menu4.jpg',
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
    '1. ผสมแป้งสาลีทำเค้ก ผงโกโก้ เบกกิงโซดา ผงฟู และเกลือป่นเข้าด้วยกัน เตรียมไว้'
    '2. ตีเนยสดชนิดเค็มกับ ครีมเทียมข้นหวาน จนกระทั่งขึ้นฟู เติมไข่ไก่ทีละฟอง ตีให้ส่วนผสมเข้ากัน ใส่ส่วนผสมแป้งที่เตรียมไว้และ นมข้นจืด ตีต่อจนส่วนผสมเป็นเนื้อเดียวกัน'
    '3. เทเนื้อเค้กลงในพิมพ์ที่เตรียมไว้ นำเข้าอบที่อุณหภูมิ 300 องศาฟาเรนไฮต์ / 150 องศาเซลเซียส ประมาณ 45 นาที หรือจนกระทั่งสุก จากนั้นคว่ำออกจากพิมพ์ พักไว้ให้เย็นสนิท'
    '4. ใช้ด้ามตะเกียบจิ้มลงบนเนื้อเค้กที่อบสุกให้ทั่ว ตกแต่งด้วยอัลมอนด์เคลือบน้ำตาล นำเข้าแช่เย็นจนทรงตัวดี ตัดเป็นชิ้นพร้อมเสิร์ฟ',
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
