import 'package:flutter/material.dart';

class CustomerOnboarding extends StatefulWidget {
  final String title;

  CustomerOnboarding({Key key, this.title}) : super(key: key);

  _MyFirstPage createState() => _MyFirstPage();
}

class _MyFirstPage extends State<CustomerOnboarding> {
  PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  static const _kDuration = const Duration(microseconds: 400000);
  static const _kCurve = Curves.easeInQuad;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 1"),
      ),
      backgroundColor: const Color(0xffffffff),
      body: Container(
        child: PageView(
          physics: new NeverScrollableScrollPhysics(),
          controller: _pageController,
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
          child: FlatButton(
            child: Text("Rotation"),
            onPressed: () {
              setState(() {
                _pageController.animateToPage(1,
                    duration: _kDuration, curve: _kCurve);
              });
            },
          ),
        ),
      ),
    );
  }

  Widget _pageTwo() {
    return Center(
      child: Container(
        color: Colors.red,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
            child: FlatButton(
          child: Text("Scale"),
          onPressed: () {
            setState(() {
              if (_pageController.hasClients) {
                _pageController.animateToPage(2,
                    duration: _kDuration, curve: _kCurve);
              }
            });
          },
        )),
      ),
    );
  }

  Widget _pageThree() {
    return Center(
      child: Container(
        color: Colors.red,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: FlatButton(
            child: Text("Translate"),
            onPressed: () {
              setState(() {
                if (_pageController.hasClients) {
                  _pageController.animateToPage(1,
                      duration: _kDuration, curve: _kCurve);
                }
              });
            },
          ),
        ),
      ),
    );
  }
}
