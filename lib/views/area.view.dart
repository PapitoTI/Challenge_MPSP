import 'package:MPSP/bloc/navigation.bloc/navigation.bloc.dart';
import 'package:MPSP/config/pallet.dart';
import 'package:flutter/material.dart';

class Area extends StatelessWidget with NavigationStates {
  final Function onMenuTap;

  const Area({Key key, this.onMenuTap}) : super(key: key);

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
                "Área de Atuação",
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
          Container(
            height: 500,
            child: PageView(
              controller: PageController(viewportFraction: 0.8),
              scrollDirection: Axis.horizontal,
              pageSnapping: true,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  color: Palett.vermelhompsp,
                  width: 100,
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
