import 'package:MPSP/bloc/navigation.bloc/navigation.bloc.dart';
import 'package:MPSP/config/card.custom.dart';
import 'package:MPSP/config/pallet.dart';
import 'package:MPSP/screens/botons/chathade.bottom.dart';
import 'package:flutter/material.dart';

class Services extends StatelessWidget with NavigationStates {
  final double _borderRadius = 24;
  final Function onMenuTap;

  const Services({Key key, this.onMenuTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 58),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(40)),
            //color: Palett.fiap,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 100),
                      child: Icon(
                        Icons.menu,
                        color: Palett.vermelhompsp,
                      ),
                    ),
                    onTap: onMenuTap,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 90),
                    child: Text(
                      "Serviços",
                      style:
                          TextStyle(fontSize: 24, color: Palett.vermelhompsp),
                    ),
                  ),
                ],
              ),
              //card
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 200),
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_borderRadius),
                        gradient: LinearGradient(
                          colors: [Palett.vermelhompsp, Palett.vermelhompsp2],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Palett.vermelhompsp2,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: CustomPaint(
                      size: Size(100, 150),
                      painter: CustomCardShapePainter(_borderRadius,
                          Palett.vermelhompsp, Palett.vermelhompsp2),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 240),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: SizedBox(height: 64),
                        ),
                        Expanded(
                          flex: 5,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Atendimento ao \nInativo',
                                style: TextStyle(
                                    color: Palett.brancompsp, fontSize: 22),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              Icon(
                                Icons.email,
                                color: Palett.brancompsp,
                                size: 50,
                              ),
                              Text(
                                'Email',
                                style: TextStyle(
                                    color: Palett.brancompsp, fontSize: 12),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),

              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_borderRadius),
                        gradient: LinearGradient(
                          colors: [Palett.azulmpsp, Colors.indigo[700]],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Palett.azulmpsp,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: CustomPaint(
                      size: Size(100, 150),
                      painter: CustomCardShapePainter(
                          _borderRadius, Palett.azulmpsp, Colors.indigo[700]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: SizedBox(height: 64),
                        ),
                        Expanded(
                          flex: 5,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Diário Oficial',
                                style: TextStyle(
                                    color: Palett.brancompsp, fontSize: 22),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              Icon(
                                Icons.article,
                                color: Palett.brancompsp,
                                size: 50,
                              ),
                              Text(
                                'Diário',
                                style: TextStyle(
                                    color: Palett.brancompsp, fontSize: 12),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),

              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_borderRadius),
                        gradient: LinearGradient(
                          colors: [Colors.green[800], Colors.green[600]],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.green[800],
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: CustomPaint(
                      size: Size(100, 150),
                      painter: CustomCardShapePainter(
                          _borderRadius, Colors.green[800], Colors.green[700]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: SizedBox(height: 64),
                        ),
                        Expanded(
                          flex: 5,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Gestão\nDocumental',
                                style: TextStyle(
                                    color: Palett.brancompsp, fontSize: 22),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              Icon(
                                Icons.article,
                                color: Palett.brancompsp,
                                size: 50,
                              ),
                              Text(
                                'FAQ',
                                style: TextStyle(
                                    color: Palett.brancompsp, fontSize: 12),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        ChatHade()
      ],
    );
  }
}
