import 'package:flutter/material.dart';
import 'package:youtubecoverflutterapp/views/HomeContent.dart';
import 'package:youtubecoverflutterapp/views/IsUp.dart';
import 'package:youtubecoverflutterapp/views/Library.dart';
import 'package:youtubecoverflutterapp/views/Subscriptions.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _actualIndex = 0;

  @override
  Widget build(BuildContext context) {

    List<Widget> _views = [
      HomeContent(),
      IsUp(),
      Subscriptions(),
      Library()
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
            color: Colors.grey,
            opacity: 1
        ),
        title: Image.asset(
          "assets/images/youtube.png",
          width: 98,
          height: 22,
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.videocam),
              onPressed: () {
                print("videocam");
              }
          ),
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print("search");
              }
          ),
          IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {
                print("account");
              }
          )
        ],
      ),
      body: _views[_actualIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _actualIndex,
        onTap: (index){
          setState(() {
            _actualIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
          fixedColor: Colors.red,
          items: [
            BottomNavigationBarItem(
//              backgroundColor: Colors.red,
              title: Text("Início"),
              icon: Icon(Icons.home)
            ),
            BottomNavigationBarItem(
//                backgroundColor: Colors.blue,
                title: Text("Em alta"),
                icon: Icon(Icons.whatshot)
            ),
            BottomNavigationBarItem(
                backgroundColor: Colors.green,
                title: Text("Inscrições"),
                icon: Icon(Icons.subscriptions)
            ),
            BottomNavigationBarItem(
//                backgroundColor: Colors.deepPurpleAccent,
                title: Text("Biblioteca"),
                icon: Icon(Icons.folder)
            ),
          ]
      ),
    );
  }
}
