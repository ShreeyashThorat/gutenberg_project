import 'package:flutter/material.dart';

class SlideTransitionToRight extends PageRouteBuilder {
  final Widget page;

  SlideTransitionToRight(this.page)
    : super(
        pageBuilder: (context, animation, anotherAnimation) => page,
        transitionDuration: const Duration(milliseconds: 500),
        reverseTransitionDuration: const Duration(milliseconds: 200),
        transitionsBuilder: (context, animation, anotherAnimation, child) {
          animation = CurvedAnimation(
            curve: Curves.easeOut,
            parent: animation,
            reverseCurve: Curves.fastOutSlowIn,
          );
          return SlideTransition(
            position: Tween(
              begin: const Offset(1.0, 0.0),
              end: const Offset(0.0, 0.0),
            ).animate(animation),
            child: page,
          );
        },
      );
}

class SlideTransitionToTop extends PageRouteBuilder {
  final Widget page;

  SlideTransitionToTop(this.page)
    : super(
        pageBuilder: (context, animation, anotherAnimation) => page,
        transitionDuration: const Duration(milliseconds: 1000),
        reverseTransitionDuration: const Duration(milliseconds: 400),
        transitionsBuilder: (context, animation, anotherAnimation, child) {
          animation = CurvedAnimation(
            curve: Curves.fastLinearToSlowEaseIn,
            parent: animation,
            reverseCurve: Curves.fastOutSlowIn,
          );
          return Align(
            alignment: Alignment.bottomCenter,
            child: SizeTransition(
              sizeFactor: animation,
              axisAlignment: 0,
              child: child,
            ),
          );
        },
      );
}
