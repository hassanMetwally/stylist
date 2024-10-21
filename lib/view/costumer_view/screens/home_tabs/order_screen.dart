import 'package:flutter/material.dart';
import 'package:stylist/view/costumer_view/screens/product.dart';
import '../../../../image/base_image.dart';
import '../../../../product/base_product.dart';
import '../../widgets/order_card.dart';

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  List<BaseProduct> products = [
    BaseProduct(title: 'Short Sleeve', images: [
      BaseImage(url: "assets/images/1.jpeg"),
    ]),
    BaseProduct(
      title: 'folr Shirt',
      images: [
        BaseImage(url: "assets/images/2.jpeg"),
      ],
    ),
    BaseProduct(
      title: 'plane Jaket',
      images: [
        BaseImage(url: "assets/images/3.jpg"),
      ],
    ),
    BaseProduct(
      title: 'Short Sleeve',
      images: [
        BaseImage(url: "assets/images/4.jpg"),
      ],
    ),
    BaseProduct(
      title: 'swit oretl Sleeve',
      images: [
        BaseImage(url: "assets/images/6.jpg"),
      ],
    ),
    BaseProduct(
      title: 'swit oretl Sleeve',
      images: [
        BaseImage(url: "assets/images/7.jpg"),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _buildTotalContainer(),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
        ),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              OrderCard(
                image: products[0].images![0].url!,
                title: products[0].title!,
              ),
              Divider(
                color: Colors.black12,
              ),
              OrderCard(
                image: products[1].images![0].url!,
                title: products[1].title!,
              ),
              Divider(
                color: Colors.black12,
              ),
              OrderCard(
                image: products[2].images![0].url!,
                title: products[2].title!,
              ),
              Divider(
                color: Colors.black12,
              ),
              OrderCard(
                image: products[4].images![0].url!,
                title: products[4].title!,
              ),
              Divider(
                color: Colors.black12,
              ),
              OrderCard(
                image: products[5].images![0].url!,
                title: products[5].title!,
              ),
              Divider(
                color: Colors.black12,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTotalContainer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 100,
      margin: EdgeInsets.only(top: 5),
      color: Color(0xffeef1f8),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'Sub Total',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                width: 35,
              ),
              Text('230', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                  colors: [Color(0xff6D0EB5), Color(0xff4059f1)],
                )),
            child: Center(
              child: Text(
                'Proceed to Checkout',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
