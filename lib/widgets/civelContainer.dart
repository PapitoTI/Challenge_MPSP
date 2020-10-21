import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class IconContainer extends StatelessWidget {
  static const double boxSize = 70;

  IconContainer(this.img, this.link);

  final String img;
  final String link;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => launch("$link"),
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 0.5,
                blurRadius: 10,
                offset: Offset(0, 5),
              )
            ],
            //color: Palett.azulmpsp,
            image: DecorationImage(
              image: AssetImage('$img'),
            )),
        width: boxSize,
        height: boxSize,
      ),
    );
  }
}

class IconTitle extends StatelessWidget {
  IconTitle(this.title);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Text(
      "$title",
      textAlign: TextAlign.center,
    ));
  }
}
