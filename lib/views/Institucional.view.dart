import 'package:MPSP/bloc/navigation.bloc/navigation.bloc.dart';
import 'package:MPSP/config/pallet.dart';
import 'package:MPSP/screens/botons/chathade.bottom.dart';
import 'package:MPSP/screens/noticias.slide.dart';
import 'package:flutter/material.dart';

///ListView.separated tem que trocar

class Institucional extends StatelessWidget with NavigationStates {
  final Function onMenuTap;

  const Institucional({Key key, this.onMenuTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Container(
          height: screenHeight,
          width: screenWidth,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Icon(
                            Icons.menu,
                            color: Palett.vermelhompsp,
                          ),
                          onTap: onMenuTap,
                        ),
                        Text(
                          "MPSP",
                          style: TextStyle(
                              fontSize: 25, color: Palett.vermelhompsp),
                        ),
                        Text(" "),
                      ],
                    ),
                  ),
                  BannerMulher()
                ],
              ),
            ),
          ),
        ),
        ChatHade()
      ],
    );
  }
}
