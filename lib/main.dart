import 'package:MPSP/config/palette.dart';
import 'package:MPSP/views/signin_view.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // Firestore.instance
  //     .collection("Usuarios")
  //     .document("001")
  //     .setData({"nome": "Pedro"});

  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Palette.azulmpsp,
  ));
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark
      .copyWith(statusBarIconBrightness: Brightness.light));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Palette.vermelhompsp),
      debugShowCheckedModeBanner: false,
      home: SigninView(),
    );
  }
}
