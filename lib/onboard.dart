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
    return Column(
      children: <Widget>[
        Flexible(
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

  Widget _pageTwo() {
    return Stack(
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
        )
      ],
    );
  }

  Widget _pageThree() {
    return Center(
      child: Container(
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
    );
  }

// TODO 2: Add Header for screen on (Without Image)
// TODO 3: Add text heading
// TODO 4: Add description
}
