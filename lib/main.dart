import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:habit_tracker/pages/home_page.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  //Lock the screen only can portrait
  SystemChrome.setPreferredOrientations([ 
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  //Allows your app's content to extend to the edges of the screen, creating a fullscreen
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}