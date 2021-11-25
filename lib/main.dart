import 'package:basic_layout_app/screens/first_layout.dart';
import 'package:basic_layout_app/screens/full_screen.dart';
import 'package:basic_layout_app/screens/home_screen.dart';
import 'package:basic_layout_app/screens/scroll_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    // systemNavigationBarColor: Colors.white, // navigation bar color
    // statusBarColor: Color.fromRGBO(227, 66, 144, 1), // status bar color
    // ));

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: ThemeData.dark(),
      title: 'Material App',
      initialRoute: '',
      routes: {
        '/' : (_) => const HomeScreen(),
        'first_layout': (_) => const FirstLayout(),
        'scroll_layout' : (_) => const ScrollDesign(),
        'full_layout' : (_) => const FullScreen()
      },
    );
  }
}