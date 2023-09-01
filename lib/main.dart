import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:note_app/screens/splash_screen.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your ap plication.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'NoteApp',
      debugShowCheckedModeBanner: false,
      home: ScreenSplash(),
    );
  }
}
