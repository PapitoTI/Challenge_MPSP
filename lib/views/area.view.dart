import 'package:MPSP/bloc/navigation.bloc/navigation.bloc.dart';
import 'package:MPSP/config/pallet.dart';
import 'package:MPSP/widgets/consumidorWidgets.dart';
import 'package:MPSP/widgets/criminalWidgets.dart';
import 'package:flutter/material.dart';
import 'package:MPSP/widgets/civelWidgets.dart';

class Area extends StatelessWidget with NavigationStates {
  final Function onMenuTap;

  const Area({Key key, this.onMenuTap}) : super(key: key);
  static const double boxSize = 70;
  static const double spaceIconToTitle = 5;
  static const double spaceTitleToIcon = 10;

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
              controller: PageController(viewportFraction: 0.90),
              scrollDirection: Axis.horizontal,
              pageSnapping: true,
              children: [CivelPage(), ConsumidorPage(), CriminalPage()],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
