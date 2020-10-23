import 'dart:ui';

import 'package:MPSP/config/pallet.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CriminalIconContainer extends StatelessWidget {
  static const double boxSize = 95;

  CriminalIconContainer(this.img, this.link);

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
        width: 80,
        height: boxSize,
      ),
    );
  }
}

class CriminalPage extends StatelessWidget {
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
            SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              //color: Palett.vermelhompsp,
              //width: 100,
              //height: 100,
              child: Text(
                "Criminal",
                style: TextStyle(fontSize: 22, color: Palett.azulmpsp),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CriminalIconContainer('assets/img/area_criminal/1.jpg',
                    "https://mpspbr.sharepoint.com/:f:/s/g_caocivel/Eoyzwst8bdVCnQElp_DrXPUBV6ZX1mgVkdnjhpfq3Xa4xw?e=QS6MaB"),
                CriminalIconContainer('assets/img/area_criminal/2.jpg',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/Eh5GSqxq4oJIgqVCbBUThC0BSegNiOFzR2_AKqukvvbt4g?e=7GZ1ja'),
                CriminalIconContainer('assets/img/area_criminal/3.jpg',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/Eony4SkBR_BBpd5dpGj1Y_gBL_B4hXpJy4zcn7-O6JstWg?e=GSc4cy'),
              ],
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CriminalIconContainer('assets/img/area_criminal/4.jpg',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/Eu-S_WjOk7hIoFfE9dwQ4ysBUqnewaqRuHQNLvSK8Xy9AA?e=vOgxwn'),
                CriminalIconContainer('assets/img/area_criminal/5.jpg',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EsWz3udkDPRJu12TcO2PeG0BE6-_RK32VO1-GM8BQIle7Q?e=2sIPWc'),
                CriminalIconContainer('assets/img/area_criminal/6.jpg',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EsWz3udkDPRJu12TcO2PeG0BE6-_RK32VO1-GM8BQIle7Q?e=2sIPWc'),
              ],
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CriminalIconContainer('assets/img/area_criminal/7.jpg',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EsWz3udkDPRJu12TcO2PeG0BE6-_RK32VO1-GM8BQIle7Q?e=2sIPWc'),
                CriminalIconContainer('assets/img/area_criminal/8.jpg',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EsWz3udkDPRJu12TcO2PeG0BE6-_RK32VO1-GM8BQIle7Q?e=2sIPWc'),
                CriminalIconContainer('assets/img/area_criminal/9.jpg',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EsWz3udkDPRJu12TcO2PeG0BE6-_RK32VO1-GM8BQIle7Q?e=2sIPWc'),
              ],
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CriminalIconContainer('assets/img/area_criminal/10.jpg',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EsWz3udkDPRJu12TcO2PeG0BE6-_RK32VO1-GM8BQIle7Q?e=2sIPWc'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
