import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final dio = new Dio(); // for http requests

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bakery recipe'),
      ),
      backgroundColor: Colors.black,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: new FittedBox(
                child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: myDetailsContainer1(),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 150,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Image(
                              fit: BoxFit.contain,
                              alignment: Alignment.topRight,
                              image: NetworkImage(
                                  "https://media-falcon.s3-ap-southeast-1.amazonaws.com/styles/image_responsive/s3/chocolate_choux_cream_thumbnail.png?itok=mkMm6Jz9"),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: new FittedBox(
                child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: myDetailsContainer4(),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 150,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Image(
                              fit: BoxFit.contain,
                              alignment: Alignment.topRight,
                              image: NetworkImage(
                                  "https://media-falcon.s3-ap-southeast-1.amazonaws.com/styles/image_responsive/s3/chocolate_soft_fudge_cake_thumbnail.jpg?itok=Qa8gPjH6"),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: new FittedBox(
                child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: myDetailsContainer3(),
                          ),
                        ),
                        Container(
                          width: 250,
                          height: 180,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Image(
                              fit: BoxFit.contain,
                              alignment: Alignment.topRight,
                              image: NetworkImage(
                                  "https://media-falcon.s3-ap-southeast-1.amazonaws.com/styles/image_responsive/s3/green_tea_chocolate_mousse_thumbnail.jpg?itok=BhBEw7E3"),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: new FittedBox(
                child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: myDetailsContainer2(),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 150,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Image(
                              fit: BoxFit.contain,
                              alignment: Alignment.topRight,
                              image: NetworkImage(
                                  "https://media-falcon.s3-ap-southeast-1.amazonaws.com/styles/image_responsive/s3/butter-cake-chocolate-almond-thumbnail.jpg?itok=GoX_3v3E"),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget myDetailsContainer1() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "ชูครีมช็อกโกแลต",
            style: TextStyle(
                color: Color(0xdd000000),
                fontSize: 18.0,
                fontWeight: FontWeight.bold),
          )),
        ),
        Container(
          child: ElevatedButton(
            child: Text(' ดูสูตร ->'),
            onPressed: () {
              Navigator.pushNamed(context, '/menu1');
            },
          ),
        ),
      ],
    );
  }

  Widget myDetailsContainer2() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "บัตเตอร์เค้กช็อกโกแลต",
            style: TextStyle(
                color: Color(0xdd000000),
                fontSize: 18.0,
                fontWeight: FontWeight.bold),
          )),
        ),
        Container(
          child: ElevatedButton(
            child: Text(' ดูสูตร ->'),
            onPressed: () {
              Navigator.pushNamed(context, '/menu4');
            },
          ),
        ),
      ],
    );
  }

  Widget myDetailsContainer3() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "มูสชาเขียวช็อกโกแลต",
            style: TextStyle(
                color: Color(0xdd000000),
                fontSize: 18.0,
                fontWeight: FontWeight.bold),
          )),
        ),
        Container(
          child: ElevatedButton(
            child: Text(' ดูสูตร ->'),
            onPressed: () {
              Navigator.pushNamed(context, '/menu3');
            },
          ),
        ),
      ],
    );
  }

  Widget myDetailsContainer4() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            "เค้กหน้านิ่มช็อกโกแลต",
            style: TextStyle(
                color: Color(0xdd000000),
                fontSize: 18.0,
                fontWeight: FontWeight.bold),
          )),
        ),
        Container(
          child: ElevatedButton(
            child: Text(' ดูสูตร ->'),
            onPressed: () {
              Navigator.pushNamed(context, '/menu2');
            },
          ),
        ),
      ],
    );
  }
}
