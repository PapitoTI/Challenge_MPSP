import 'package:MPSP/bloc/navigation.bloc/navigation.bloc.dart';
import 'package:MPSP/config/pallet.dart';
import 'package:MPSP/screens/botons/chathade.bottom.dart';
import 'package:flutter/material.dart';

class Services extends StatelessWidget with NavigationStates {
  final Function onMenuTap;

  const Services({Key key, this.onMenuTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 58),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        //color: Palett.fiap,
      ),
      child: Stack(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    style: TextStyle(fontSize: 24, color: Palett.vermelhompsp),
                  ),
                ),
              ],
            ),
          ],
        ),
        ChatHade()
      ]),
    );
  }
}
