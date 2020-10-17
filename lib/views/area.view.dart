import 'package:MPSP/bloc/navigation.bloc/navigation.bloc.dart';
import 'package:MPSP/config/pallet.dart';
import 'package:flutter/material.dart';

class Area extends StatelessWidget with NavigationStates {
  final Function onMenuTap;

  const Area({Key key, this.onMenuTap}) : super(key: key);
  static const double boxSize = 130;

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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Palett.azulmpsp,
                              ),
                              width: boxSize,
                              height: boxSize,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Palett.azulmpsp,
                              ),
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Palett.azulmpsp,
                              ),
                              width: boxSize,
                              height: boxSize,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Palett.azulmpsp,
                              ),
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Palett.azulmpsp,
                              ),
                              width: boxSize,
                              height: boxSize,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Palett.azulmpsp,
                              ),
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Palett.azulmpsp,
                              ),
                              width: boxSize,
                              height: boxSize,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Palett.azulmpsp,
                              ),
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
