import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_onboarding/custom_widget/fancy_fab.dart';

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          color: Colors.white,
          child: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(left: 16.0, bottom: 20.0, right: 16.0),
              child: Text(
                "DIVE TO MAKE MEMORIES",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'VarelaRound'),
              ),
            ),
          ),
        ),
        Container(
          color: Colors.white,
          child: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(left: 16.0, bottom: 50.0, right: 16.0),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
                " when an unknown printer took a galley of type and scrambled it to make a type "
                "specimen book. It has survived not only five centuries, but also the leap into electronic "
                "typesetting, remaining essentially unchanged. ",
                style: TextStyle(
                    fontSize: 14,
                    letterSpacing: 1,
                    wordSpacing: 5,
                    fontFamily: 'VarelaRound'),
              ),
            ),
          ),
        ),
        Container(
          color: Colors.white,
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 30.0, bottom: 50.0),
              child: FancyFab(
                onPressed: () {
                  setState(() {
                    _pageController.animateToPage(1,
                        duration: _kDuration, curve: _kCurve);
                  });
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _pageTwo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          color: Colors.white,
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 30.0, bottom: 40.0),
              child: FancyFab(
                onPressed: () {
                  setState(() {
                    _pageController.animateToPage(2,
                        duration: _kDuration, curve: _kCurve);
                  });
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _pageThree() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          color: Colors.white,
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 30.0, bottom: 40.0),
              child: FancyFab(
                onPressed: () {
                  setState(() {
                    _pageController.animateToPage(1,
                        duration: _kDuration, curve: _kCurve);
                  });
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

// TODO 1: Add Header for screen on (Without Image)
// TODO 2: Hard coded resources in flutter (Color and String)
}
