import 'package:MPSP/config/pallet.dart';
import 'package:flutter/material.dart';

///Para alterar olhe o Material Design
InputDecoration signupInputDecoration({String hintText, String labelText}) {
  return InputDecoration(
    contentPadding: const EdgeInsets.symmetric(vertical: 18),
    hintStyle: const TextStyle(color: Colors.white, fontSize: 18),
    hintText: hintText,
    labelText: labelText,
    labelStyle: const TextStyle(color: Colors.white, fontSize: 18),
    focusedBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white, width: 2),
    ),
    enabledBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    ),
    errorBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: Palett.fiap),
    ),
    focusedErrorBorder: const UnderlineInputBorder(
      borderSide: BorderSide(width: 2, color: Palett.fiap),
    ),
    errorStyle: const TextStyle(color: Colors.white),
  );
}

InputDecoration signInInputDecoration({String hintText, String labelText}) {
  return InputDecoration(
    contentPadding: const EdgeInsets.symmetric(vertical: 18),
    hintStyle: const TextStyle(fontSize: 18),
    hintText: hintText,
    labelText: labelText,
    labelStyle: const TextStyle(color: Colors.black, fontSize: 18),
    focusedBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.black, width: 2),
    ),
    enabledBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.black),
    ),
    errorBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: Palett.vermelhompsp),
    ),
    focusedErrorBorder: const UnderlineInputBorder(
      borderSide: BorderSide(width: 2, color: Palett.vermelhompsp2),
    ),
    errorStyle: const TextStyle(color: Palett.fiap),
  );
}
