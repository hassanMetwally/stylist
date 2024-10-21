import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  String image;
  String title;
  OrderCard({required this.image,required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.only(top: 15, left: 10, right: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 75,
              width: 45,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: <Widget>[
                  InkWell(
                    child: Icon(Icons.keyboard_arrow_up),
                    onTap: () {},
                  ),
                  Text('0'),
                  InkWell(
                    child: Icon(Icons.keyboard_arrow_down),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
                // borderRadius: BorderRadius.circular(35),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                    offset: Offset(8, 5),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text('3.0', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.orangeAccent)),
                // SizedBox(height: 2,),
                Container(
                  height: 45,
                  width: 120,
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Red',
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '-',
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'XL',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Spacer(),
            InkWell(
              onTap: () {},
              child: Icon(
                Icons.cancel,
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
