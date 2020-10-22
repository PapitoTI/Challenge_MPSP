import 'dart:ui';

import 'package:MPSP/config/pallet.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ConsumidorIconContainer extends StatelessWidget {
  static const double boxSize = 180;

  ConsumidorIconContainer(this.img, this.link);

  final String img;
  final String link;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => launch("$link"),
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
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
        width: 107,
        height: boxSize,
      ),
    );
  }
}

class ConsumidorPage extends StatelessWidget {
  static const double boxSize = 70;
  static const double spaceIconToTitle = 5;
  static const double spaceTitleToIcon = 10;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        //alignment: Alignment.topCenter,
        margin: const EdgeInsets.symmetric(horizontal: 2),
        //color: Palett.vermelhompsp,
        width: 100,
        child: Column(
          children: [
            Container(
              color: Colors.white,
            ),
            //SizedBox(height: 10),
            Container(
              alignment: Alignment.center,
              //color: Palett.vermelhompsp,
              //width: 100,
              //height: 100,
              child: Text(
                "Consumidor",
                style: TextStyle(fontSize: 22, color: Palett.azulmpsp),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ConsumidorIconContainer(
                    "assets/img/area_consumidor/00-01-ConflitosAtivo34.png",
                    "https://mpspbr.sharepoint.com/:f:/s/g_caocivel/Eoyzwst8bdVCnQElp_DrXPUBV6ZX1mgVkdnjhpfq3Xa4xw?e=QS6MaB"),
                ConsumidorIconContainer(
                    'assets/img/area_consumidor/00-02-ConsumidorAtivo35.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/Eh5GSqxq4oJIgqVCbBUThC0BSegNiOFzR2_AKqukvvbt4g?e=7GZ1ja')
              ],
            ),

            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ConsumidorIconContainer(
                    'assets/img/area_consumidor/00-03-materialAtivo36.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/Eony4SkBR_BBpd5dpGj1Y_gBL_B4hXpJy4zcn7-O6JstWg?e=GSc4cy'),
                ConsumidorIconContainer(
                    'assets/img/area_consumidor/00-04-RecursoAtivo37.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/Eu-S_WjOk7hIoFfE9dwQ4ysBUqnewaqRuHQNLvSK8Xy9AA?e=vOgxwn'),
              ],
            ),

            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ConsumidorIconContainer(
                    'assets/img/area_consumidor/00-05- RoteirosAtivo38.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EsWz3udkDPRJu12TcO2PeG0BE6-_RK32VO1-GM8BQIle7Q?e=2sIPWc'),
              ],
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => launch(
                      "http://www.mpsp.mp.br/portal/page/portal/cao_consumidor/acervo"),
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
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
                          image: AssetImage(
                              'assets/img/area_consumidor/00-06-AcervoAtivo39.png'),
                        )),
                    width: 107,
                    height: boxSize,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
