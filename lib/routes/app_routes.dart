import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/three_screen/three_screen.dart';

class AppRoutes {
  static const String threeScreen = '/three_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes =>
      {threeScreen: ThreeScreen.builder, initialRoute: ThreeScreen.builder};
}
