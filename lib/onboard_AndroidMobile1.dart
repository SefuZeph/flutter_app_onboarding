import 'package:flutter/material.dart';

import 'onboard_AndroidMobile2.dart';

class onboard_AndroidMobile1 extends StatelessWidget {
  final String title;

  onboard_AndroidMobile1({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 1"),
      ),
      backgroundColor: const Color(0xffffffff),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 450.0),
          ),
          _buttonOne(context),
        ],
      ),
    );
  }

  Widget _buttonOne(BuildContext context) {
    return RaisedButton(
      child: Text("Button 1"),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => onboard_AndroidMobile2()));
      },
    );
  }

  Widget _translateButton() {
    return RaisedButton(
      child: Text("Button Press"),
      onPressed: () {},
    );
  }
}
