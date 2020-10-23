import 'package:flutter/material.dart';
import 'package:qoute_app/login.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 55, 10, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Create an\nAccount",
            style: TextStyle(
                fontSize: 35, color: Colors.white, fontWeight: FontWeight.w800),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
            child: Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 5, 0),
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  border: Border.all(color: Colors.white)),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.add_a_photo,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  RotatedBox(
                    quarterTurns: 3,
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: Text(
                      "Please attach your image to set \nas profile picture",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 1, color: Colors.yellow))),
                padding: EdgeInsets.all(5),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person_outline,
                      color: Colors.white,
                    ),
                    hintText: "Username",
                    hintStyle: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 1, color: Colors.yellow))),
                padding: EdgeInsets.all(5),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 1, color: Colors.yellow))),
                padding: EdgeInsets.all(5),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: Container(
              width: 280,
              child: FlatButton(
                  onPressed: () {},
                  color: Colors.amber.shade500,
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  )),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(55, 10, 0, 0),
            child: Row(
              children: <Widget>[
                Text(
                  "Already have an account ??",
                  style: TextStyle(color: Colors.white),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return LoginPage();
                    }));
                  },
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
