import 'package:MPSP/bloc/navigation.bloc/navigation.bloc.dart';
import 'package:MPSP/config/pallet.dart';
import 'package:flutter/material.dart';

///ListView.separated tem que trocar

class Institucional extends StatelessWidget with NavigationStates {
  final Function onMenuTap;

  const Institucional({Key key, this.onMenuTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 60),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        color: Palett.brancompsp,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: ClampingScrollPhysics(),
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
                  "MPSP",
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
              height: 200,
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
            Text(
              'Serviços',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("Serviço1"),
                  subtitle: Text("Area"),
                  trailing: Text("Descrição"),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(height: 16);
              },
              itemCount: 9,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
