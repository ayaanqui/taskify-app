import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'views/home/home_view.dart';

GoogleSignIn googleSignIn = GoogleSignIn(
  clientId:
      '889604743831-e7n6g4j0km9h531feul3ncfn77gm7i6t.apps.googleusercontent.com',
  scopes: [
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
  ],
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taskify',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Taskify'),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var isLoggedIn = false;
}
