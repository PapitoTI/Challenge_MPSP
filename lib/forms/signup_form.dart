import 'package:MPSP/config/palette.dart';
import 'package:MPSP/screens/buttons/signup_button.dart';
import 'package:MPSP/config/text_field_custom.dart';
import 'package:MPSP/screens/controller/menu_controle.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key key, this.onLogInPressed}) : super(key: key);

  final VoidCallback onLogInPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(
                left: 1,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 135.0),
                      child: Text(
                        '\n\n\nCadastre-se',
                        style:
                            TextStyle(fontSize: 35, color: Palette.brancompsp),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "MP",
                          style: TextStyle(
                              fontSize: 60,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "SP",
                          style: TextStyle(
                              fontSize: 60,
                              color: Palette.brancompsp,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 180.0),
                      child: Text(
                        "Ministério Público",
                        style: TextStyle(
                            fontSize: 20.5,
                            fontFamily: 'Roboto',
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 180.0),
                      child: Text(
                        "do Estado de São Paulo",
                        style: TextStyle(
                            fontSize: 15.25,
                            fontFamily: 'Roboto',
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: TextField(
                      autofocus: false,
                      decoration: signupInputDecoration(
                        labelText: 'EMAIL',
                        hintText: "pedro93546@gmail.com",
                      )),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: TextField(
                    cursorColor: Colors.white,
                    autofocus: false,
                    decoration: signupInputDecoration(
                      labelText: 'SENHA',
                      hintText: "*********",
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: TextField(
                    cursorColor: Colors.white,
                    autofocus: false,
                    decoration: signupInputDecoration(
                      labelText: 'CONFIRME SENHA',
                      hintText: "*********",
                    ),
                  ),
                ),
                SignUpBar(
                  isLoading: true,
                  label: 'Cadastrar',
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
                      onLogInPressed?.call();
                    },
                    child: const Text(
                      'Entrar',
                      style: TextStyle(
                        color: Palette.brancompsp,
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
    ));
  }
}
