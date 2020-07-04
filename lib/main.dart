import 'package:aztucoman/screens/aboutus.dart';
import 'package:aztucoman/screens/home_page.dart';
import 'package:aztucoman/screens/settings.dart';
import 'package:aztucoman/screens/sys_control.dart';
import 'package:aztucoman/screens/syssettings.dart';
import 'package:aztucoman/screens/watercontrol.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AztuComan',
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.orange,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/syscontrol': (context) => SysControl(),
        '/settings': (context) => SettingsPage(),
        '/settingsSys': (context) => SysSettings(),
        '/watercontrol': (context) => WaterControl(),
        '/about': (context) => AboutUs(),
      },
    );
  }
}
