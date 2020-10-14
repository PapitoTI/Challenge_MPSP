import 'package:MPSP/config/pallet.dart';
import 'package:MPSP/screens/botons/sign.in.up.bottom.dart';
import 'package:MPSP/views/menu.view.dart';
import 'package:MPSP/config/text_field.custom.dart';
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
              //realinhar
              padding: EdgeInsets.only(
                left: 1,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '\nCadastre-se\nMPSP',
                  style: TextStyle(fontSize: 40, color: Palett.brancompsp),
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
                    splashColor: Palett.brancompsp,
                    onTap: () {
                      onLogInPressed?.call();
                    },
                    child: const Text(
                      'Entrar',
                      style: TextStyle(
                        color: Palett.brancompsp,
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
