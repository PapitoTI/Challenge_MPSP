import 'package:MPSP/bloc/navigation.bloc/navigation.bloc.dart';
import 'package:MPSP/config/pallet.dart';
import 'package:flutter/material.dart';

class Cidadao extends StatelessWidget with NavigationStates {
  final Function onMenuTap;

  const Cidadao({Key key, this.onMenuTap}) : super(key: key);

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
          Padding(
            padding: const EdgeInsets.only(
                top: 20), //para o oneaction tive que colocar

            child: Row(
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
                  "Cidadão",
                  style: TextStyle(fontSize: 24, color: Palett.vermelhompsp),
                ),
                Icon(
                  Icons.chat,
                  color: Palett.vermelhompsp,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
