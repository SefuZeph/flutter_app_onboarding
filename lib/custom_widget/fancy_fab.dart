import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FancyFab extends StatefulWidget {
  final GestureTapCallback onPressed;

  FancyFab({this.onPressed});

  _FancyFabState createState() => _FancyFabState();
}

class _FancyFabState extends State<FancyFab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FloatingActionButton(
        child: Icon(Icons.access_alarm),
        onPressed: () {
          setState(() {
            widget.onPressed();
          });
        },
      ),
    );
  }
}
