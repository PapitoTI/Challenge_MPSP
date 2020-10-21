import 'package:MPSP/bloc/navigation.bloc/navigation.bloc.dart';
import 'package:MPSP/config/pallet.dart';
import 'package:flutter/material.dart';
import 'package:MPSP/widgets/iconContainer.dart';
import 'package:url_launcher/url_launcher.dart';

class Area extends StatelessWidget with NavigationStates {
  final Function onMenuTap;

  const Area({Key key, this.onMenuTap}) : super(key: key);
  static const double boxSize = 80;

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
              controller: PageController(viewportFraction: 0.9),
              scrollDirection: Axis.horizontal,
              pageSnapping: true,
              children: [
                SingleChildScrollView(
                  child: Container(
                    //alignment: Alignment.topCenter,
                    margin: const EdgeInsets.symmetric(horizontal: 8),
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
                          //color: Palett.azulmpsp,
                          //width: 100,
                          //height: 100,
                          child: Text(
                            "Cível",
                            style:
                                TextStyle(fontSize: 24, color: Palett.azulmpsp),
                          ),
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconContainer('assets/img/atos.png',
                                'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/Eoyzwst8bdVCnQElp_DrXPUBV6ZX1mgVkdnjhpfq3Xa4xw?e=QS6MaB'),
                            IconContainer('assets/img/destaques.png',
                                'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/Eh5GSqxq4oJIgqVCbBUThC0BSegNiOFzR2_AKqukvvbt4g?e=7GZ1ja')
                          ],
                        ),
                        SizedBox(height: 5),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                  child: Text(
                                "Atos de Racionalização",
                                textAlign: TextAlign.center,
                              )),
                              Flexible(
                                  child: Text(
                                "Destaques             ",
                                textAlign: TextAlign.center,
                              )),
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconContainer('assets/img/falencias.png',
                                'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/Eony4SkBR_BBpd5dpGj1Y_gBL_B4hXpJy4zcn7-O6JstWg?e=GSc4cy'),
                            IconContainer('assets/img/familia.png',
                                'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/Eu-S_WjOk7hIoFfE9dwQ4ysBUqnewaqRuHQNLvSK8Xy9AA?e=vOgxwn'),
                          ],
                        ),
                        SizedBox(height: 5),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                  child: Text(
                                "Falências             ",
                                textAlign: TextAlign.center,
                              )),
                              Flexible(
                                  child: Text(
                                "Família               ",
                                textAlign: TextAlign.center,
                              )),
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconContainer('assets/img/fundacoes.png',
                                'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EsWz3udkDPRJu12TcO2PeG0BE6-_RK32VO1-GM8BQIle7Q?e=2sIPWc'),
                            IconContainer('assets/img/mandados.png',
                                'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EgFnAUiu4mlJjhjReWy6X78Bd6tv7UqqgSyYhyGHYLSENA?e=qqhcv3'),
                          ],
                        ),
                        SizedBox(height: 5),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                  child: Text(
                                "Fundações              ",
                                textAlign: TextAlign.center,
                              )),
                              Flexible(
                                  child: Text(
                                "Mandados               de Segurança",
                                textAlign: TextAlign.center,
                              )),
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconContainer('assets/img/processocivil.png',
                                'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EtZfXKNngM1Hu2n4WUSBE88Ba24SgVb6Rz3K_nKtwS1yTw?e=8FDaGW'),
                            IconContainer('assets/img/registrospublicos.png',
                                'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EoaU-tbGuaREpWZ82XxIB1IB0dws-vO0ziOBmi7xby8ooQ?e=H20yOE'),
                          ],
                        ),
                        SizedBox(height: 5),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                  child: Text(
                                "Processo Civil             ",
                                textAlign: TextAlign.center,
                              )),
                              Flexible(
                                  child: Text(
                                "Registros Públicos             ",
                                textAlign: TextAlign.center,
                              )),
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconContainer('assets/img/roteiros.png',
                                'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EveT_cf0gDJEpmmDZHlxq0oBib9BvWpfM4VrdVKM9Z_gEw?e=l0X2SF'),
                            IconContainer('assets/img/acordos.png',
                                'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EpZmUCV_zt9ItZrjSLjBVZcB3jtbNmcHb5qAPNvhqn2MMw?e=fz2EEW'),
                          ],
                        ),
                        SizedBox(height: 5),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                  child: Text(
                                "Roteiros             ",
                                textAlign: TextAlign.center,
                              )),
                              Flexible(
                                  child: Text(
                                "Termos               de Cooperação",
                                textAlign: TextAlign.center,
                              )),
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconContainer('assets/img/dna.png',
                                'https://nam02.safelinks.protection.outlook.com/?url=https%3A%2F%2Fmpspbr.sharepoint.com%2Fsites%2Fg_examedna&data=02%7C01%7CAnaAdorno%40mpsp.mp.br%7Cafa23a4a709d44fac35808d73e006bc7%7C2dbd8499508d4b76a31dca39cb3d8f1d%7C0%7C0%7C637046043850379624&sdata=WXB2LpYWhQdXI2D4NIIBcP869%2BvNMB79OdJoLuLUcJA%3D&reserved=0'),
                            GestureDetector(
                              onTap: () => launch(
                                  "https://mpspbr.sharepoint.com/:f:/s/g_caocivel/Eoyzwst8bdVCnQElp_DrXPUBV6ZX1mgVkdnjhpfq3Xa4xw?e=QS6MaB"),
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
                                    color: Palett.azulmpsp,
                                    image: DecorationImage(
                                      image: AssetImage('assets/img/dna.png'),
                                    )),
                                width: boxSize,
                                height: boxSize,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                  child: Text(
                                "Agendamento          de Exames de DNA",
                                textAlign: TextAlign.center,
                              )),
                              Flexible(
                                  child: Text(
                                "Destaques             ",
                                textAlign: TextAlign.center,
                              )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
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
