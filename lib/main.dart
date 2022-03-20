import 'dart:io';
import 'package:flutter/material.dart'; 
import 'package:getittest/domain/models/person_list.dart';
import 'package:getittest/view/home.dart';
import 'package:getittest/view/signin.dart';
import 'package:getittest/view/signup.dart';
import 'package:getittest/view/welcome.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

    // Initialize hive
  await Hive.initFlutter();
  // Registering the adapter
  Hive.registerAdapter(PersonListAdapter() );
  // Opening the box
  await Hive.openBox('personDb');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const WelcomePage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/signIn': (context) => const SignInPage(),
        '/signUp': (context) => const SignUpPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
