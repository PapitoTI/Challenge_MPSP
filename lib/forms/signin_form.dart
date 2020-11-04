import 'package:MPSP/config/palette.dart';
import 'package:MPSP/screens/buttons/signup_button.dart';
import 'package:MPSP/screens/controller/menu_controle.dart';
import 'package:MPSP/config/text_field_custom.dart';
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
              child: Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "MP",
                            style: TextStyle(
                                fontSize: 80,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "SP",
                            style: TextStyle(
                                fontSize: 80,
                                color: Palette.brancompsp,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 135.0),
                        child: Text(
                          "Ministério Público",
                          style: TextStyle(
                              fontSize: 26,
                              fontFamily: 'Roboto',
                              color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 135.0),
                        child: Text(
                          "do Estado de São Paulo",
                          style: TextStyle(
                              fontSize: 19,
                              fontFamily: 'Roboto',
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
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
                    splashColor: Palette.brancompsp,
                    onTap: () {
                      if (onSignUpClicked != null) {
                        onSignUpClicked();
                      }
                    },
                    child: const Text(
                      'Cadastre-se',
                      style: TextStyle(
                        color: Palette.vermelhompsp2,
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
