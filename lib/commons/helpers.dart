import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

class Nav {
  static pop(BuildContext context) {
    NavigatorState nav = Navigator.of(context);
    if (!nav.canPop()) return;
    nav.canPop();
  }

  static push(BuildContext context, Widget page, {replace: true}) {
    NavigatorState nav = Navigator.of(context);
    MaterialPageRoute route = MaterialPageRoute(builder: (context) => page);
    replace ? nav.pushReplacement(route) : nav.push(route);
  }
}

unavailable() {
  Fluttertoast.showToast(
    msg: "Cette fonctionnalité n'est pas encore disponible.",
  );
}
