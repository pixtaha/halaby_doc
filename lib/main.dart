import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:halaby_doc/core/router/routes_cstants.dart';
import 'package:halaby_doc/firebase_options.dart';
import 'package:halaby_doc/halaby_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(HalabyApp(appRouter: AppRouter()));
  const pi = 3.14;
 
}
class B {}
class A {} 


class C extends B{}