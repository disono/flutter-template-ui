import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text("My App"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // Container(
              //   height: 100,
              //   margin: EdgeInsets.fromLTRB(10, 30, 20, 10),
              //   padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              //   color: Colors.white,
              //   child: Text("Hello 1"),
              // ),
              // Container(
              //   height: 100,
              //   margin: EdgeInsets.fromLTRB(100, 30, 20, 10),
              //   padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              //   color: Colors.white,
              //   child: Text("Hello 2"),
              // ),
              // Container(
              //   height: 10,
              //   color: Colors.blue,
              // )
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/pic_trulli.jpg"),
              ),
              Text(
                "Your Name",
                style: TextStyle(
                    fontSize: 40,
                    fontFamily: "Pacifico Regular",
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "BY WEBMONS",
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Source Sans Pro",
                    color: Colors.teal.shade100,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5
                ),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                    color: Colors.teal.shade100
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: ListTile(
                      leading: Icon(
                          Icons.phone,
                          color: Colors.teal
                      ),
                      title: Text(
                        "123 456 789",
                        style: TextStyle(
                            color: Colors.teal.shade900,
                            fontFamily: "Source Sans Pro",
                            fontSize: 20
                        ),
                      ),
                    )
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: ListTile(
                      leading: Icon(
                          Icons.email,
                          color: Colors.teal
                      ),
                      title: Text(
                        "your_mail@gmail.com",
                        style: TextStyle(
                            color: Colors.teal.shade900,
                            fontFamily: "Source Sans Pro",
                            fontSize: 20
                        ),
                      ),
                    )
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.blueGrey[900], child: Icon(Icons.add)),
      ),
    );
  }
}
