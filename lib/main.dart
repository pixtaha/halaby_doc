import 'package:flutter/material.dart';
import 'package:halaby_doc/core/router/routes_constants.dart';
import 'package:halaby_doc/halaby_app.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(HalabyApp(appRouter: AppRouter()));
  FlutterNativeSplash.remove();
}
