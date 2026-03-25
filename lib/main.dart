import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:tasks/app.dart';
import 'package:tasks/core/routing/app_route.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  FlutterNativeSplash.remove(); // 🔥 هذا المهم

  runApp(MyApp(appRoute: AppRoute()));
}
