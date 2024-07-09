import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/services/auth/auth_gate.dart';
import 'package:fooddeliveryapp/models/restaurant.dart';
import 'package:fooddeliveryapp/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyAsdqe0X8d3UhoJmdSOHxEdCLqhq9pOOOk",
        authDomain: "fooddeliverytute-shrey.firebaseapp.com",
        projectId: "fooddeliverytute-shrey",
        storageBucket: "fooddeliverytute-shrey.appspot.com",
        messagingSenderId: "441439675694",
        appId: "1:441439675694:web:1bfbc05c8b5f999a4286bf",
        measurementId: "G-BPGPWMMDB2"),
  );
  runApp(
    MultiProvider(
      providers: [
        // theme provider
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => Restaurant(),
        ),
        // restaurant provider
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthGate(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
