import 'package:flutter/material.dart';

import '../product.dart';

class Recommended extends StatefulWidget {
  @override
  _RecommendedState createState() => _RecommendedState();
}

class _RecommendedState extends State<Recommended> {
  List<String> photos = [
    "assets/images/6.jpg",
    "assets/images/2.jpeg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
    "assets/images/6.jpg",
    "assets/images/7.jpg",
    "assets/images/8.jpg",
    "assets/images/6.jpg",
    "assets/images/2.jpeg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
    "assets/images/6.jpg",
    "assets/images/7.jpg",
    "assets/images/8.jpg",
    "assets/images/8.jpg",
    "assets/images/6.jpg",
    "assets/images/2.jpeg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
    "assets/images/6.jpg",
    "assets/images/7.jpg",
    "assets/images/8.jpg",
  ];
  List<int> ids = [0, 2, 6];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: photos.length,
      itemBuilder: (context, position) {
        return InkWell(
          child: _buildCard(position),
          onDoubleTap: () {
            if (ids.contains(position)) {
              ids.remove(position);
            } else {
              ids.add(position);
            }
            setState(() {});
            print(ids);
          },
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Product(
                  photo: photos[position],
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildCard(int position) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(boxShadow: [BoxShadow(offset: Offset(0, 8), blurRadius: 24, color: Color(0xFF4056C6).withOpacity(.15))]),
          margin: EdgeInsets.all(8.0),
          child: Card(
            color: Color(0xffeef1f8),
            child: Column(
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 215,
                  child: Image(
                    image: ExactAssetImage(photos[position]),
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      width: 30,
                      height: 35,
                      child: IconButton(
                        padding: EdgeInsets.only(
                          left: 10,
                        ),
                        iconSize: 18,
                        icon: Icon(
                          Icons.favorite,
                        ),
                        onPressed: () {
                          if (ids.contains(position)) {
                            ids.remove(position);
                          } else {
                            ids.add(position);
                          }
                          setState(() {});
                          print(ids);
                        },
                        color: (ids.contains(position)) ? Colors.red : Colors.black12,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                      height: 20,
                      child: IconButton(
                          padding: EdgeInsets.only(
                            right: 10,
                          ),
                          iconSize: 18,
                          icon: Icon(
                            Icons.visibility,
                            color: Colors.blue,
                          ),
                          onPressed: () {}),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: 25,
          left: 25,
          child: Row(
            children: <Widget>[
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, //color: Colors.yellow
                    image: DecorationImage(image: ExactAssetImage("assets/images/10.jpg"))),
              ),
              SizedBox(
                width: 6,
              ),
              Container(
                width: 65,
                height: 24,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(0, 0, 0, 0.1),
                  //image: DecorationImage(image: ExactAssetImage("assets/images/placeholder_bg.png"))
                ),
                alignment: Alignment.center,
                child: Text(
                  'NIKE',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
