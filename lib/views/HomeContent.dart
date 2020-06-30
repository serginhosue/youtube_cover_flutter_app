import 'package:flutter/material.dart';
import 'package:youtubecoverflutterapp/Api.dart';

class HomeContent extends StatefulWidget {
  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {



  @override
  Widget build(BuildContext context) {

    Api api = Api();

    api.search("");

    return Container(
      child: Center(
        child: Text(
          "Início",
          style: TextStyle(
              fontSize: 25
          ),
        ),
      ),
    );
  }
}
