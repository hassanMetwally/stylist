import 'package:flutter/material.dart';
import '../../../navigation_menu_item/nav_menu_item.dart';
import '../screens/customer_sign_in.dart';
import '../screens/three_d_model.dart';

class NavigationDrawerr extends StatefulWidget {
  @override
  _NavigationDrawerrState createState() => _NavigationDrawerrState();
}

class _NavigationDrawerrState extends State<NavigationDrawerr> {
  List<NavMenuItem> navMenuItems = [
    NavMenuItem("3d model", () => ThreeDModel()),
    NavMenuItem("Favorites", () => ThreeDModel()),
    NavMenuItem("Personal information", () => ThreeDModel()),
    NavMenuItem("Clipboard", () => ThreeDModel()),
    NavMenuItem("Calendar", () => ThreeDModel()),
    NavMenuItem("Payment method", () => ThreeDModel()),
    NavMenuItem("Settings", () => ThreeDModel()),
    NavMenuItem("About Us", () => ThreeDModel()),
    NavMenuItem("Account", () => ThreeDModel()),
    NavMenuItem("Orders", () => ThreeDModel()),
  ];

  TextStyle drawerTextStyle = TextStyle(color: Color(0xffeef1f8));

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(229, 194, 211, 250),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _drawNavHeader(),
            _drawNaveBody(),
            _drawNaveFooter(),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(0)),
    );
  }

  Widget _drawNavHeader() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 35, bottom: 15),
          child: Container(
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: ExactAssetImage("assets/images/hassan.jpg"),
                fit: BoxFit.cover,
              ),
              //borderRadius: BorderRadiusGeometry()
            ),
            width: 95,
            height: 95,
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.black26,
            shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(18.0), side: BorderSide(color: Color(0xffeef1f8))),
          ),
          onPressed: () {},
          child: Text(
            "hassan metwally",
            style: drawerTextStyle,
          ),
        )
      ],
    );
  }

  Widget _drawNaveBody() {
    return ListView.builder(
      itemBuilder: (context, position) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 6),
          color: const Color.fromARGB(53, 0, 0, 0),
          child: ListTile(
            title: Text(
              navMenuItems[position].title,
              style: drawerTextStyle,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 13,
              color: Color(0xffeef1f8),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return navMenuItems[position].destination();
              }));
            },
          ),
        );
      },
      itemCount: navMenuItems.length,
      shrinkWrap: true, //because this widget is  nested in a scrollable widget
      physics: new NeverScrollableScrollPhysics(),
    );
  }

  Widget _drawNaveFooter() {
    return TextButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            "Log Out",
            style: drawerTextStyle,
          ),
          SizedBox(
            width: 12,
          ),
          Icon(
            Icons.lock_outline,
            color: Color(0xffeef1f8),
          ),
        ],
      ),
      onPressed: () {
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) {
          return SignIn();
        }), (route) => false);
      },
    );
  }
}
