import 'package:flutter/material.dart';
import 'package:voted_aplication/SecondPage.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("E-Voting"),
        ),
        body: Column(
          children: <Widget>[
            Flexible(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Home",
                        style: TextStyle(fontSize: 20, color: Colors.blue),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Room",
                        style: TextStyle(fontSize: 20, color: Colors.blue),
                      ),
                    ),
                    Container(
                      child: Text(
                        "About",
                        style: TextStyle(fontSize: 20, color: Colors.blue),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Setting",
                        style: TextStyle(fontSize: 20, color: Colors.blue),
                      ),
                    ),
                  ],
                )),
            Flexible(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.fromLTRB(10, 100, 10, 10),
                  child: ListView(
                    children: <Widget>[
                      buildCard(),
                      RaisedButton(
                          child: Text("masuk"),
                          onPressed: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(
                              builder: (context) {
                                return SecondPage();
                              },
                            ));
                          })
                    ],
                  ),
                )),
            Flexible(flex: 1, child: Container()),
          ],
        ));
  }

  Card buildCard() {
    return Card(
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(5),
          ),
          Text(
            "Room 1",
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }
}
