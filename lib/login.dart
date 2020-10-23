import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
            margin: EdgeInsets.fromLTRB(20, 40, 0, 0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.navigate_before,
                        size: 30,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 30, 0, 20),
                    child: Text(
                      "Log In",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "Welcome, we are happy that you are back",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 60, 20, 10),
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 1, color: Colors.yellow))),
                        padding: EdgeInsets.all(5),
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.white,
                            ),
                            hintText: "Email",
                            hintStyle:
                                TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 20, 0),
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 1, color: Colors.yellow))),
                        padding: EdgeInsets.all(5),
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.white,
                            ),
                            hintText: "Password",
                            hintStyle:
                                TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 60, 20, 0),
                    child: Container(
                      width: 200,
                      child: FlatButton(
                          onPressed: () {},
                          color: Colors.amber.shade500,
                          child: Text(
                            "SIGN UP",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(70, 20, 0, 0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "First time here ??",
                          style: TextStyle(color: Colors.white),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline),
                          ),
                        )
                      ],
                    ),
                  ),
                ])));
  }
}
