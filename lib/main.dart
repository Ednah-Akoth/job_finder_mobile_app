import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:job_finder/src/features/authentication/screens/navpages/home_page.dart';
import 'package:job_finder/src/features/authentication/screens/navpages/main_page.dart';
import 'package:job_finder/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:job_finder/src/utils/theme/theme.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: SplashScreen(),
      // home: MainPage(),
    );
  }
}
