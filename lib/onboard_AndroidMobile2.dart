import 'package:flutter/material.dart';

class onboard_AndroidMobile2 extends StatelessWidget {
  onboard_AndroidMobile2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 2"),
      ),
      backgroundColor: const Color(0xffffffff),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 450.0),
          ),
          _buttonTwo(context),
        ],
      ),
    );
  }

  Widget _buttonTwo(BuildContext context) {
    return RaisedButton(
      child: Text("Button 2"),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
