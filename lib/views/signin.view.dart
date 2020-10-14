import 'package:MPSP/config/pallet.dart';
import 'package:MPSP/screens/controller/anim.controle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Escolher font
class SigninView extends StatefulWidget {
  @override
  _SigninViewState createState() => _SigninViewState();
}

class _SigninViewState extends State<SigninView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MPSP",
      theme: ThemeData(
        textTheme: GoogleFonts.anonymousProTextTheme(),

        /// escolherfont essa esta riducula
        accentColor: Palett.brancompsp,
        appBarTheme: const AppBarTheme(
          brightness: Brightness.dark,
          color: Palett.fiap,
        ),
      ),
      home: ControleScreen(),
    );
  }
}
