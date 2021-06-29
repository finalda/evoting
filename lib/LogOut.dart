import 'package:flutter/material.dart';
import 'package:voted_aplication/LoginPage.dart';

class LogOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(130),
          child: Text(
            "Terimakasih telah berpartisipasi dalam e-voting",
          ),
        ),
        Container(
          child: RaisedButton(
              child: Text("Logout"),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return LoginPage();
                }));
              }),
        )
      ],
    ));
  }
}
