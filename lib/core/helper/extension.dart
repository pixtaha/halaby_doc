import 'package:flutter/material.dart';

extension Navigation on BuildContext {

  
  void push(Widget page) => Navigator.of(this)
      .push(MaterialPageRoute(builder: (_) => page));

  void pushNamed(String routeName, {Object? arguments}) =>
      Navigator.of(this).pushNamed(routeName, arguments: arguments);

  void pushReplacement(Widget page) => Navigator.of(this)
      .pushReplacement(MaterialPageRoute(builder: (_) => page));

  void pushReplacementNamed(String routeName, {Object? arguments}) =>
      Navigator.of(this).pushReplacementNamed(routeName, arguments: arguments);

  void pushAndRemoveUntil(Widget page) => Navigator.of(this)
      .pushAndRemoveUntil(
        MaterialPageRoute(builder: (_) => page),
        (route) => false,
      );

  void pop() => Navigator.of(this).pop();
}


// context.push(HomePage());
// context.pushNamed('/home');
// context.pushReplacement(LoginPage());
// context.pop();