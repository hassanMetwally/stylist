import 'package:flutter/material.dart';

import 'customer_home.dart';
import 'customer_registering.dart';

class SignIn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _userController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void _clearUser() {
    setState(() {
      _userController.clear();
    });
  }

  void _clearPass() {
    setState(() {
      _passwordController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey.shade100,
      body: Container(
        alignment: Alignment.center,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 25),
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 50.0)),
            Image.asset(
              "assets/images/logo.png",
              width: 250,
              height: 250,
            ),
            Padding(padding: EdgeInsets.all(40.0)),
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    controller: _userController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      // border: OutlineInputBorder(),
                      icon: Icon(
                        Icons.account_circle,
                        color: Colors.blue,
                      ),
                      hintText: 'phone or email',
                      //     suffixIcon: IconButton(
                      //  icon: Icon(Icons.clear), onPressed: _clearUser)
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "enter your email";
                      } else {
                        return null;
                      }
                    },
                    //  maxLength: 30,
                  ),
                  Padding(padding: EdgeInsets.all(5.0)),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      //  border: OutlineInputBorder(),
                      icon: Icon(
                        Icons.lock,
                        color: Colors.blue,
                      ),
                      hintText: 'password',
//                  suffixIcon: IconButton(
//                      icon: Icon(Icons.clear), onPressed: _clearPass)
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "enter your password";
                      } else {
                        return null;
                      }
                    },
                    // maxLength: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.all(17.0),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                      ),
                      child: Text('Log in'),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.pop(context);
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return CustomerHome();
                          }));
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
            Row(
              //I put this row so 'FlatButton' don't take all the width of 'ListView'
              //widgets in 'ListView' takes all its width
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.blue,
                  ),
                  child: Text('Forgot password?'),
                  onPressed: () {},
                )
              ],
            ),
            Divider(
              height: 80,
              color: Colors.black38,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green.shade700,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 55),
                  ),
                  child: Text('Create New Account'),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return SignUp();
                    }));
                  },
                )
              ],
            ),
            Row(
              //I put this row so 'FlatButton' don't take all the width of 'ListView'
              //widgets in 'ListView' takes all its width
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                   style: TextButton.styleFrom(
                        foregroundColor: Colors.blue,
                      ),
                  child: Text('shop owner?'),
                  onPressed: () {},
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
