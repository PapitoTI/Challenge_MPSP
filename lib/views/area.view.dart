import 'package:MPSP/bloc/navigation.bloc/navigation.bloc.dart';
import 'package:MPSP/config/pallet.dart';
import 'package:flutter/material.dart';

class Area extends StatelessWidget with NavigationStates {
  final Function onMenuTap;

  const Area({Key key, this.onMenuTap}) : super(key: key);
  static const double boxSize = 80;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 48),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        color: Palett.brancompsp,
      ),
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
                  color: Palett.vermelhompsp,
                ),
                onTap: onMenuTap,
              ),
              Text(
                "Áreas de Atuação",
                style: TextStyle(fontSize: 24, color: Palett.vermelhompsp),
              ),
              Icon(
                Icons.chat,
                color: Palett.vermelhompsp,
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Flexible(
            child: PageView(
              controller: PageController(viewportFraction: 0.9),
              scrollDirection: Axis.horizontal,
              pageSnapping: true,
              children: [
                SingleChildScrollView(
                  child: Container(
                    //alignment: Alignment.topCenter,
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    color: Palett.vermelhompsp,
                    width: 100,
                    child: Column(
                      children: [
                        Container(
                          color: Colors.white,
                        ),
                        //SizedBox(height: 10),
                        Container(
                          alignment: Alignment.center,
                          //color: Palett.azulmpsp,
                          //width: 100,
                          //height: 100,
                          child: Text(
                            "Cível",
                            style:
                                TextStyle(fontSize: 24, color: Palett.azulmpsp),
                          ),
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Palett.azulmpsp,
                                  image: DecorationImage(
                                    image: AssetImage('assets/img/atos.png'),
                                  )),
                              width: boxSize,
                              height: boxSize,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Palett.azulmpsp,
                                  image: DecorationImage(
                                    image:
                                        AssetImage('assets/img/destaques.png'),
                                  )),
                              width: boxSize,
                              height: boxSize,
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Container(
                          //alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Flexible(
                                    child: Text(("Atos de Racionalização"))),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: Flexible(child: Text(("Destaques"))),
                              ),
                            ],
                          ),
                        ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //   children: [
                        //     Container(
                        //       alignment: Alignment.center,
                        //       width: 150,
                        //       child: Text("Atos de Racionalização",
                        //           style: TextStyle(
                        //               fontSize: 16, color: Palett.azulmpsp),
                        //           overflow: TextOverflow.ellipsis,
                        //           maxLines: 2),
                        //     ),
                        //     Container(
                        //       alignment: Alignment.center,
                        //       width: 120,
                        //       child: Text("Destaques",
                        //           style: TextStyle(
                        //               fontSize: 16, color: Palett.azulmpsp),
                        //           overflow: TextOverflow.ellipsis,
                        //           maxLines: 1),
                        //     ),
                        //   ],
                        // ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Palett.azulmpsp,
                                  image: DecorationImage(
                                    image:
                                        AssetImage('assets/img/falencias.png'),
                                  )),
                              width: boxSize,
                              height: boxSize,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Palett.azulmpsp,
                                  image: DecorationImage(
                                    image: AssetImage('assets/img/familia.png'),
                                  )),
                              width: boxSize,
                              height: boxSize,
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Palett.azulmpsp,
                                  image: DecorationImage(
                                    image:
                                        AssetImage('assets/img/fundacoes.png'),
                                  )),
                              width: boxSize,
                              height: boxSize,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Palett.azulmpsp,
                                  image: DecorationImage(
                                    image:
                                        AssetImage('assets/img/mandados.png'),
                                  )),
                              width: boxSize,
                              height: boxSize,
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Palett.azulmpsp,
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/img/processocivil.png'),
                                  )),
                              width: boxSize,
                              height: boxSize,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Palett.azulmpsp,
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/img/registrospublicos.png'),
                                  )),
                              width: boxSize,
                              height: boxSize,
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Palett.azulmpsp,
                                  image: DecorationImage(
                                    image:
                                        AssetImage('assets/img/roteiros.png'),
                                  )),
                              width: boxSize,
                              height: boxSize,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Palett.azulmpsp,
                                  image: DecorationImage(
                                    image: AssetImage('assets/img/acordos.png'),
                                  )),
                              width: boxSize,
                              height: boxSize,
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Palett.azulmpsp,
                                  image: DecorationImage(
                                    image: AssetImage('assets/img/dna.png'),
                                  )),
                              width: boxSize,
                              height: boxSize,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Palett.azulmpsp,
                                  image: DecorationImage(
                                    image: AssetImage('assets/img/atos.png'),
                                  )),
                              width: boxSize,
                              height: boxSize,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  color: Palett.fiap,
                  width: 100,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  color: Palett.azulmpsp,
                  width: 100,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
