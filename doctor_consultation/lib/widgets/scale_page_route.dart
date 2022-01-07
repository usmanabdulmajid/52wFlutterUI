import 'package:flutter/cupertino.dart';

class ScalePageRoute extends PageRouteBuilder {
  final Widget child;
  ScalePageRoute({required this.child})
      : super(
            transitionDuration: const Duration(milliseconds: 500),
            pageBuilder: (context, animation, secondaryAnimation) {
              return child;
            });
  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return ScaleTransition(
      scale: animation,
      child: child,
    );
  }
}
