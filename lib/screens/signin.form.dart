import 'package:MPSP/config/pallet.dart';
import 'package:MPSP/screens/botons/sign.in.up.bottom.dart';
import 'package:MPSP/screens/menu.layout.dart';
import 'package:MPSP/config/text_field.custom.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key key, this.onSignUpClicked}) : super(key: key);

  final VoidCallback onSignUpClicked;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'MPSP',
                style: TextStyle(fontSize: 40, color: Palett.brancompsp),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: TextField(
                    autofocus: false,
                    decoration: signInInputDecoration(
                      labelText: 'EMAIL',
                      hintText: "pedro93546@gmail.com",
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: TextField(
                    autofocus: false,
                    decoration: signInInputDecoration(
                        labelText: 'SENHA', hintText: "*********"),
                  ),
                ),
                SignInBar(
                  isLoading: true,
                  label: 'Entrar',
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Menu();
                    }));
                  },
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                    splashColor: Palett.brancompsp,
                    onTap: () {
                      //onSignUpClicked?.call();
                      if (onSignUpClicked != null) {
                        onSignUpClicked();
                      }
                    },
                    child: const Text(
                      'Cadastre-se',
                      style: TextStyle(
                        color: Palett.vermelhompsp2,
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
