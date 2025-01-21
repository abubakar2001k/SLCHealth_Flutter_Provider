import 'package:flutter/cupertino.dart';

class NavigatorServices {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static Future<dynamic> PushNamed(
    String routeName, {
    dynamic arguments,
  }) async {
    return navigatorKey.currentState?.pushNamed(routeName, arguments: arguments);
  }

  static void goBack() {
    return navigatorKey.currentState?.pop();
  }
}
