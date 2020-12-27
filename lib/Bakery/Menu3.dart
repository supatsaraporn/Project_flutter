import 'package:flutter/material.dart';

class Menu3 extends StatefulWidget {
  @override
  _Menu3State createState() => _Menu3State();
}

class _Menu3State extends State<Menu3> {
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
                    'สูตรเบเกอรี่ | มูสชาเขียวช็อกโกแลต',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'มูสชาเขียวช็อกโกแลต" เมนูอร่อยที่สามารถทำได้ง่ายๆ โดยไม่ต้องใช้เตาอบ',
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
            'images/menu3.jpg',
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
    '1. ผสมเจลาติน แป้งข้าวโพด น้ำตาลทราย ผงชาเขียว นมข้นจืดและสีผสมอาหารสีเขียว คนผสมเข้าด้วยกัน กรองผ่านกระชอน'
    '2. นำขึ้นตั้งไฟคนตลอดเวลาจนส่วนผสมเดือดทั่ว ปิดไฟ เติมไวต์ช็อกโกแลต คอมพาวด์สับหยาบ คนจนช็อกโกแลตละลาย ตักหยอดลงในพิมพ์มูสช็อกโกแลต เกลี่ยให้เรียบ นำเข้าแช่เย็นจนส่วนผสมทรงตัวดี'
    '3. ถอดมูสออกจากพิมพ์ โรยด้วยผงชาเขียว ตัดเป็นชิ้น จัดใส่ภาชนะพร้อมเสิร์ฟ',
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
