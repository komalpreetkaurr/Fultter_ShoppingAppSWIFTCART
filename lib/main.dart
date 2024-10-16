import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:device_preview/device_preview.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/models/cartt.dart';
import 'package:shopping_app/models/favvv.dart';
import 'package:shopping_app/screen/Splash.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Cart()),
        ChangeNotifierProvider(create: (context) => Favourite()),
      ],
      builder: (context, child) => const MaterialApp(
        builder: DevicePreview.appBuilder,
        home: SplashScreen(),
      ),
    );
  }
}
