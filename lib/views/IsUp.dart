import 'package:flutter/material.dart';

class IsUp extends StatefulWidget {
  @override
  _IsUpState createState() => _IsUpState();
}

class _IsUpState extends State<IsUp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Em alta",
          style: TextStyle(
              fontSize: 25
          ),
        ),
      ),
    );
  }
}
