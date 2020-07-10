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
        backgroundColor: const Color(0xfff79631),
        child: Icon(Icons.keyboard_arrow_down),
        onPressed: () {
          setState(() {
            widget.onPressed();
          });
        },
      ),
    );
  }
}
