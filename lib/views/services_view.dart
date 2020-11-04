import 'package:MPSP/bloc/navigation.bloc/navigation_bloc.dart';
import 'package:MPSP/config/palette.dart';
import 'package:MPSP/screens/buttons/chathead.button.dart';
import 'package:flutter/material.dart';

class Services extends StatelessWidget with NavigationStates {
  final Function onMenuTap;

  const Services({Key key, this.onMenuTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Scaffold(
          body: Column(
            children: [
              Container(
                color: Palette.vermelhompsp,
                height: 30,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                color: Palette.vermelhompsp,
                height: 80,
                width: width,
                child: Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                            child: Icon(
                              Icons.menu,
                              color: Palette.brancompsp,
                            ),
                            onTap: onMenuTap,
                          ),
                          Text(
                            "Serviços",
                            style: TextStyle(
                                fontSize: 24,
                                color: Palette.brancompsp,
                                fontFamily: "Montserrat"),
                          ),
                          Container()
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 88.0),
                  child: ListView(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 70),
                                child: Row(
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
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.bold,
                                          color: Palette.vermelhompsp),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                "Ministério Público",
                                style: TextStyle(
                                    fontSize: 26,
                                    fontFamily: 'Roboto',
                                    color: Colors.black),
                              ),
                              Text(
                                "do Estado de São Paulo",
                                style: TextStyle(
                                    fontSize: 19,
                                    fontFamily: 'Roboto',
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 40,
                        ),
                        child: Container(
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(0, 68, 82, 1),
                          ),
                          child: Center(
                            child: Text(
                              "Atendimento ao Inativo",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 35,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      //2
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 175, 209, 1),
                        ),
                        child: Center(
                          child: Text(
                            "Atos Normativos",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 35, color: Colors.black),
                          ),
                        ),
                      ),
                      //3
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(65, 191, 217, 1),
                        ),
                        child: Center(
                          child: Text(
                            "Biblioteca",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 35, color: Colors.black),
                          ),
                        ),
                      ),
                      //4
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(24, 72, 82, 1),
                        ),
                        child: Center(
                          child: Text(
                            "CTIC",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 35, color: Colors.black),
                          ),
                        ),
                      ), //5
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 132, 158, 1),
                        ),
                        child: Center(
                          child: Text(
                            "Demonstrativo on-line",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 35, color: Colors.black),
                          ),
                        ),
                      ),
                      //6
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 68, 82, 1),
                        ),
                        child: Center(
                          child: Text(
                            "Diário Oficial",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 35, color: Colors.black),
                          ),
                        ),
                      ),
                      //7
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 68, 82, 1),
                        ),
                        child: Center(
                          child: Text(
                            "e-funcional",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 35, color: Colors.black),
                          ),
                        ),
                      ),
                      //8
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 68, 82, 1),
                        ),
                        child: Center(
                          child: Text(
                            "Email Institucional",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 35, color: Colors.black),
                          ),
                        ),
                      ),
                      //9
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 68, 82, 1),
                        ),
                        child: Center(
                          child: Text(
                            "Formulários Administrativos",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 35, color: Colors.black),
                          ),
                        ),
                      ),
                      //10
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 68, 82, 1),
                        ),
                        child: Center(
                          child: Text(
                            "Formulários-CAEX",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 35, color: Colors.black),
                          ),
                        ),
                      ),
                      //11
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 68, 82, 1),
                        ),
                        child: Center(
                          child: Text(
                            "Formulários-CRH",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 35, color: Colors.black),
                          ),
                        ),
                      ),
                      //12
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 68, 82, 1),
                        ),
                        child: Center(
                          child: Text(
                            "Gestão Documental",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 35, color: Colors.black),
                          ),
                        ),
                      ),
                      //13
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 68, 82, 1),
                        ),
                        child: Center(
                          child: Text(
                            "Links",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 35, color: Colors.black),
                          ),
                        ),
                      ),
                      //14
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 68, 82, 1),
                        ),
                        child: Center(
                          child: Text(
                            "Lista de Antiguidades",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 35, color: Colors.black),
                          ),
                        ),
                      ),
                      //15
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 68, 82, 1),
                        ),
                        child: Center(
                          child: Text(
                            "Lista Telefônica",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 35, color: Colors.black),
                          ),
                        ),
                      ),
                      //16
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 68, 82, 1),
                        ),
                        child: Center(
                          child: Text(
                            "Mesa Digital",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 35, color: Colors.black),
                          ),
                        ),
                      ),
                      //17
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 68, 82, 1),
                        ),
                        child: Center(
                          child: Text(
                            "Tabelas Unificadas",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 35, color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        ChatHead()
      ],
    );
  }
}
