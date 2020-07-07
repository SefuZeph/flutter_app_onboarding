import 'package:flutter/material.dart';

class onboard_AndroidMobile1 extends StatefulWidget {
  final String title;

  onboard_AndroidMobile1({Key key, this.title}) : super(key: key);

  _MyFirstPage createState() => _MyFirstPage();
}

class _MyFirstPage extends State<onboard_AndroidMobile1> {
  final pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 1"),
      ),
      backgroundColor: const Color(0xffffffff),
      body: Container(
        child: PageView(
//          physics: new NeverScrollableScrollPhysics(),
          controller: pageController,
          scrollDirection: Axis.vertical,
          children: <Widget>[_pageOne(), _pageTwo(), _pageThree()],
        ),
      ),
    );
  }

  Widget _pageOne() {
    return Center(
      child: Container(
        color: Colors.red,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Text("Rotation"),
        ),
      ),
    );
  }

  Widget _pageTwo() {
    return Center(
      child: Container(
        color: Colors.blue,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
            child: FlatButton(
          child: Text("Scale"),
          onPressed: () {
            setState(() {
              pageController.animateToPage(2,
                  duration: Duration(microseconds: 400000),
                  curve: Curves.easeInQuad);
            });
          },
        )),
      ),
    );
  }

  Widget _pageThree() {
    return Center(
      child: Container(
        color: Colors.green,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Text("Translate"),
        ),
      ),
    );
  }
}
