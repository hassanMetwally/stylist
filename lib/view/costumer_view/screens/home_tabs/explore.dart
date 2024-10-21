import 'package:flutter/material.dart';

import '../product.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  List<int> ids = [0, 2, 6];
  List<String> photos = [
    "assets/images/1.jpeg",
    "assets/images/4.jpg",
    "assets/images/6.jpg",
    "assets/images/7.jpg",
    "assets/images/8.jpg",
    "assets/images/4.jpg",
    "assets/images/6.jpg",
    "assets/images/7.jpg",
    "assets/images/6.jpg",
    "assets/images/7.jpg",
    "assets/images/8.jpg",
    "assets/images/4.jpg",
    "assets/images/6.jpg",
    "assets/images/7.jpg",
    "assets/images/1.jpeg",
    "assets/images/8.jpg",
    "assets/images/2.jpeg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
    "assets/images/6.jpg",
    "assets/images/7.jpg",
    "assets/images/8.jpg",
    "assets/images/6.jpg",
    "assets/images/7.jpg",
    "assets/images/8.jpg",
    "assets/images/4.jpg",
    "assets/images/6.jpg",
    "assets/images/7.jpg",
    "assets/images/1.jpeg",
    "assets/images/8.jpg",
    "assets/images/2.jpeg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
    "assets/images/6.jpg",
    "assets/images/7.jpg",
    "assets/images/8.jpg",
    "assets/images/1.jpeg",
    "assets/images/8.jpg",
    "assets/images/2.jpeg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
    "assets/images/6.jpg",
    "assets/images/7.jpg",
    "assets/images/8.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _drawHeader(),
          _drawBody(),
        ],
      ),
    );
  }

  Widget _drawHeader() {
    return Column(
      children: <Widget>[
        Wrap(
          children: <Widget>[
            TextButton(
              onPressed: () {},
              child: Text(
                "#voike",
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "#nike",
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "#adidas",
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "#adidas",
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color.fromRGBO(188, 206, 247, .5),
              ),
              onPressed: () {},
              child: Row(
                children: <Widget>[
                  Text("filter"),
                  Icon(Icons.filter_list),
                ],
              ),
            )
          ],
        )
      ],
    );
  }

  Widget _drawBody() {
    return GridView.builder(
      itemBuilder: (context, position) {
        return InkWell(
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
            child: _drawBodyItems(position));
      },
      itemCount: photos.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
    );
  }

  Widget _drawBodyItems(int position) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(boxShadow: [BoxShadow(offset: Offset(0, 8), blurRadius: 24, color: Color(0xFF4056C6).withOpacity(.15))]),
            child: Card(
              color: Color(0xffeef1f8),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .168,
                    child: Image(
                      image: ExactAssetImage(photos[position]),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        width: 30,
                        height: 25,
                        child: IconButton(
                          padding: EdgeInsets.only(left: 10, top: 4),
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
                        height: 25,
                        child: IconButton(
                            padding: EdgeInsets.only(right: 10, top: 4),
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
            top: 12.5,
            left: 12.5,
            child: Row(
              children: <Widget>[
                Container(
                  width: 19,
                  height: 19,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, //color: Colors.yellow
                      image: DecorationImage(image: ExactAssetImage("assets/images/10.jpg"))),
                ),
                SizedBox(
                  width: 7,
                ),
                Container(
                  width: 60,
                  height: 19,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'NIKE',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
