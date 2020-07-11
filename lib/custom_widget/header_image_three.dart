import 'package:flutter/cupertino.dart';

class HeaderImageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var assetImage = new AssetImage('assets/images/three.png');
    var image = new Image(
      image: assetImage,
      width: 240.0,
      height: 240.0,
    );
    return Container(
      child: image,
    );
  }
}
