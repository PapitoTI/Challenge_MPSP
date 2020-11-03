import 'package:MPSP/bloc/navigation.bloc/navigation_bloc.dart';
import 'package:MPSP/config/palette.dart';
//import 'package:MPSP/screens/botons/chathade.bottom.dart';
import 'package:MPSP/screens/buttons/chathead.button.dart';
import 'package:MPSP/screens/noticias_slide.dart';
import 'package:MPSP/widgets/scrollCard_widgets.dart';

import 'package:flutter/material.dart';

class Institucional extends StatelessWidget with NavigationStates {
  final Function onMenuTap;
  const Institucional({Key key, this.onMenuTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    // var screenHeight = MediaQuery.of(context).size.height;
    // var screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Container(
          height: size.height,
          width: size.width,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 25, 10, 5),
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
                        "Ministerio Publico SP",
                        style: TextStyle(
                            fontSize: 25, color: Palette.vermelhompsp),
                      ),
                      Text(" "),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                BannerMulher(),
                Scroll(),
              ],
            ),
          ),
        ),
        //ChatHade()

        ChatHead()
      ],
    );
  }
}
