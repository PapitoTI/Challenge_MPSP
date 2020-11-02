import 'package:MPSP/bloc/navigation.bloc/navigation_bloc.dart';
import 'package:MPSP/config/palette.dart';
import 'package:MPSP/screens/botons/chathade.bottom.dart';
import 'package:MPSP/screens/buttons/chathead.button.dart';
import 'package:MPSP/screens/noticias_slide.dart';
import 'package:flutter/material.dart';

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
                            color: Palette.vermelhompsp,
                          ),
                          onTap: onMenuTap,
                        ),
                        Text(
                          "MPSP",
                          style: TextStyle(
                              fontSize: 25, color: Palette.vermelhompsp),
                        ),
                        Text(" "),
                      ],
                    ),
                  ),
                  BannerMulher(),
                  ////
                  ///
                ],
              ),
            ),
          ),
        ),
        //ChatHade()
        ChatHead()
      ],
    );
  }
}
