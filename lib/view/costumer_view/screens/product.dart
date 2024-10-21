import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  final String photo;
  Product({required this.photo});

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextButton(
            style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                fixedSize: Size(MediaQuery.of(context).size.width - 25, 50)),
            onPressed: () {},
            child: Text(
              'Add to Cart',
              style: TextStyle(fontSize: 20),
            )),
      ),
      body: Container(
        height: double.infinity,
        color: Color(0xffeef1f8),
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(),
            child: Column(
              children: <Widget>[
                Image.asset(
                  widget.photo,
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,
                    top: 16.0,
                    bottom: 0.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Icon(
                        Icons.done_outline,
                        color: Colors.blue,
                      ),
                      Text(
                        ' 2 Shoes',
                        style: TextStyle(color: Colors.black38),
                      ),
                      Container(
                        child: IconButton(
                          icon: Icon(
                            Icons.remove_red_eye,
                          ),
                          color: Colors.blue,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          ' Description :',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black38,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Text(
                          'The Nike Pro Dri-FIT Tank hugs you with '
                          'sweat-wicking, stretchy fabric for lasting'
                          'comfort and natural movement while you'
                          "train or compete. Cut-outs at the sides add"
                          'ventilation'
                          'sweat-wicking, stretchy fabric for lasting',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black38,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      _Type(
                        model: 'Form',
                        type: 'Nike',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      _Type(
                        model: 'Price',
                        type: '15\$',
                      ),
                      _DropListSize(),
                      _DropListColor(),
                      SizedBox(
                        height: 60,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Type extends StatelessWidget {
  final String type;
  final String model;
  _Type({required this.type, required this.model});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          model,
          style: TextStyle(color: Colors.black38, fontWeight: FontWeight.w900, fontSize: 17),
        ),
        Text(
          type,
          style: TextStyle(color: Colors.black38, fontWeight: FontWeight.w900, fontSize: 17),
        ),
      ],
    );
  }
}

String dropdownValueSize = '37';

class _DropListSize extends StatefulWidget {
  @override
  _DropListSizeState createState() => _DropListSizeState();
}

class _DropListSizeState extends State<_DropListSize> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          'Size',
          style: TextStyle(color: Colors.black38, fontWeight: FontWeight.w900, fontSize: 17),
        ),
        DropdownButton<String>(
          value: dropdownValueSize,
          icon: Icon(Icons.arrow_downward),
          iconSize: 18,
          style: TextStyle(color: Colors.blue),
          items: <String>['37', '39', '41', '43'].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(
              () {
                dropdownValueSize = newValue!;
              },
            );
          },
        ),
      ],
    );
  }
}

String dropdownValueColor = 'white';

class _DropListColor extends StatefulWidget {
  @override
  __DropListColorState createState() => __DropListColorState();
}

class __DropListColorState extends State<_DropListColor> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          '  Color',
          style: TextStyle(color: Colors.black38, fontWeight: FontWeight.w900, fontSize: 17),
        ),
        DropdownButton<String>(
          value: dropdownValueColor,
          icon: Icon(Icons.arrow_downward),
          iconSize: 18,
          style: TextStyle(color: Colors.blue),
          items: <String>['white', 'Red', 'Black', 'Bink'].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(
              () {
                dropdownValueColor = newValue!;
              },
            );
          },
        ),
      ],
    );
  }
}
