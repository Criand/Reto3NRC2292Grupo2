import 'package:chat/Interfaz/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: FirebaseOptions(
  apiKey: "AIzaSyCsK8ySMF8CWZM54LntW2jZmU5xIwS6W18",
  authDomain: "reto3-chat-306f6.firebaseapp.com",
  projectId: "reto3-chat-306f6",
  storageBucket: "reto3-chat-306f6.appspot.com",
  messagingSenderId: "860958522688",
  appId: "1:860958522688:web:799459b0e3337293c54ea5",
  measurementId: "G-YWHVY9HV1G"));
  runApp(const MyApp());
}


