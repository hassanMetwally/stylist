import 'package:flutter/material.dart';
import 'package:stylist/view/costumer_view/widgets/order_card.dart';

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
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
              OrderCard(),
              Divider(
                color: Colors.white,
              ),
              OrderCard(),
              Divider(
                color: Colors.white,
              ),
              OrderCard(),
              Divider(
                color: Colors.white,
              ),
              OrderCard(),
              Divider(
                color: Colors.white,
              ),
              OrderCard(),
              Divider(
                color: Colors.white,
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
      height: 120,
      margin: EdgeInsets.only(top: 5),
      child: Column(
        children: <Widget>[
          Divider(
            height: 30,
            color: Color(0xFFD3D3D3),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Sub Total',
                style: TextStyle(color: Colors.grey),
              ),
              Text('230',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white)),
            ],
          ),
          SizedBox(
            height: 20,
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
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
