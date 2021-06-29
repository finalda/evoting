import 'package:flutter/material.dart';
import 'package:voted_aplication/LogOut.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: <Widget>[
      Container(
        margin: EdgeInsets.all(20),
        child: Center(
          child: Text(
            "E-Voting",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      Container(
          margin: EdgeInsets.all(20),
          child: Center(
              child: Text(
            "Ketua dan Wakil Ketua",
            style: TextStyle(fontSize: 20),
          ))),
      Container(
        margin: EdgeInsets.all(10),
        height: 150,
        width: 150,
        child: Image(
          image: AssetImage("images/foto1.jpg"),
        ),
      ),
      Container(
          child: Center(
        child: Text("Angga Arria"),
      )),
      Container(
        margin: EdgeInsets.all(10),
        height: 150,
        width: 150,
        child: Image(
          image: AssetImage("images/foto2.jpg"),
        ),
      ),
      Container(
          child: Center(
        child: Text("Daffa Sitanala"),
      )),
      Align(
        alignment: Alignment.center,
        child: Container(
          margin: EdgeInsets.all(20),
          child: RaisedButton(
              child: Text("Pilih"),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return LogOut();
                }));
              }),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          RaisedButton(
              child: Text(
                "Back",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {}),
          RaisedButton(
              child: Text(
                "Next",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {})
        ],
      )
    ]));
  }
}
