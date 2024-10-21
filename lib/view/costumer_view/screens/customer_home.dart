import 'package:flutter/material.dart';
import '../shared_ui/customer_navigation_drawer.dart';
import 'home_tabs/order_screen.dart';
import 'home_tabs/explore.dart';
import 'home_tabs/recommended.dart';

class CustomerHome extends StatefulWidget {
  @override
  _CustomerHomeState createState() => _CustomerHomeState();
}

class _CustomerHomeState extends State<CustomerHome> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "STYLIST",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 73, 80, 90)),
        ),
        centerTitle: true,
        actions: <Widget>[IconButton(icon: Icon(Icons.search), onPressed: () {}), IconButton(icon: Icon(Icons.notifications), onPressed: () {})],
        bottom: TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.account_balance),
            ),
            Tab(
              icon: Icon(Icons.shopping_cart),
            ),
          ],
          controller: _tabController,
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(width: 5.0),
            insets: EdgeInsets.symmetric(horizontal: 40.0),
          ),
        ),
        elevation: 15,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(60),
            bottomRight: Radius.circular(60),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Recommended(),
          Explore(),
          OrderScreen(),
        ],
      ),
      drawer: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Color.fromRGBO(44, 68, 123, 0.698),
          ),
          child: NavigationDrawerr()),
    );
  }
}
