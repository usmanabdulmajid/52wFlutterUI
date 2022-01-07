import 'package:flutter/cupertino.dart';

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 0);

    path.quadraticBezierTo(
        10, size.height * .2, size.width * 0.4, size.height * .30);

    path.quadraticBezierTo(size.width * 0.6, size.height * .35,
        size.width * .70, size.height * .6);

    path.quadraticBezierTo(
        size.width * .75, size.height * .75, size.width, size.height * .8);

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
