import 'package:MPSP/bloc/navigation.bloc/navigation.bloc.dart';
import 'package:MPSP/config/pallet.dart';
import 'package:MPSP/widgets/consumidor_widgets.dart';
import 'package:MPSP/widgets/criminal_widgets.dart';
import 'package:MPSP/widgets/top_container.dart';
import 'package:flutter/material.dart';
import 'package:MPSP/widgets/civel_widgets.dart';

class Area extends StatelessWidget with NavigationStates {
  final Function onMenuTap;

  Area({Key key, this.onMenuTap}) : super(key: key);
  static const double boxSize = 70;
  static const double spaceIconToTitle = 5;
  static const double spaceTitleToIcon = 10;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TopContainer(
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
                            color: Palett.brancompsp,
                          ),
                          onTap: onMenuTap,
                        ),
                        Text(
                          "Áreas de Atuação",
                          style:
                              TextStyle(fontSize: 24, color: Palett.brancompsp),
                        ),
                        Icon(
                          Icons.chat,
                          color: Palett.brancompsp,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              child: PageView(
                controller: PageController(viewportFraction: 0.90),
                scrollDirection: Axis.horizontal,
                pageSnapping: true,
                children: [CivelPage(), ConsumidorPage(), CriminalPage()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
