import 'dart:ui';

import 'package:MPSP/config/pallet.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CartilhasIconContainer extends StatelessWidget {
  static const double boxSize = 70;

  CartilhasIconContainer(this.img, this.link);

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

class CartilhasIconTitle extends StatelessWidget {
  CartilhasIconTitle(this.title);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Text(
      "$title",
      style: TextStyle(fontFamily: "Roboto", fontSize: 14),
      textAlign: TextAlign.center,
    ));
  }
}

class CartilhasPage extends StatelessWidget {
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
            Padding(
              padding: const EdgeInsets.only(
                left: 60,
                right: 60,
              ),
              child: Container(
                alignment: Alignment.center,
                //color: Palett.azulmpsp,
                //width: 100,
                height: 50,
                decoration: BoxDecoration(
                    color: Palett.azulmpsp,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    "Clique na área de interesse para ser redirecionado.",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontFamily: "Roboto"),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CartilhasIconContainer(
                    'assets/img/cidadao_cartilhas/Acessibilidade nos Municípios_cropped.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/Eoyzwst8bdVCnQElp_DrXPUBV6ZX1mgVkdnjhpfq3Xa4xw?e=QS6MaB'),
                CartilhasIconContainer(
                    'assets/img/cidadao_cartilhas/Áreas de Risco_cropped.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/Eh5GSqxq4oJIgqVCbBUThC0BSegNiOFzR2_AKqukvvbt4g?e=7GZ1ja')
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CartilhasIconTitle(
                      "Atos de Racionalização                   "),
                  CartilhasIconTitle(
                      "Destaques                                         "),
                ],
              ),
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CartilhasIconContainer(
                    'assets/img/cidadao_cartilhas/Atuação do Ministério Público em Conflitos Possessórios Coletivos_cropped.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/Eony4SkBR_BBpd5dpGj1Y_gBL_B4hXpJy4zcn7-O6JstWg?e=GSc4cy'),
                CartilhasIconContainer(
                    'assets/img/cidadao_cartilhas/Atuação do Ministério Público em Relação à Epidemia de Dengue_cropped.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/Eu-S_WjOk7hIoFfE9dwQ4ysBUqnewaqRuHQNLvSK8Xy9AA?e=vOgxwn'),
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CartilhasIconTitle(
                      "Falências                                             "),
                  CartilhasIconTitle(
                      "Família                                                 "),
                ],
              ),
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CartilhasIconContainer(
                    'assets/img/cidadao_cartilhas/Bullying_cropped.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EsWz3udkDPRJu12TcO2PeG0BE6-_RK32VO1-GM8BQIle7Q?e=2sIPWc'),
                CartilhasIconContainer(
                    'assets/img/cidadao_cartilhas/Cartilha da Cidadania_cropped.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EgFnAUiu4mlJjhjReWy6X78Bd6tv7UqqgSyYhyGHYLSENA?e=qqhcv3'),
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CartilhasIconTitle(
                      "Fundações                                       "),
                  CartilhasIconTitle(
                      "Mandados                                          de Segurança"),
                ],
              ),
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CartilhasIconContainer(
                    'assets/img/cidadao_cartilhas/Cartilha da Tolerância_cropped.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EtZfXKNngM1Hu2n4WUSBE88Ba24SgVb6Rz3K_nKtwS1yTw?e=8FDaGW'),
                CartilhasIconContainer(
                    'assets/img/cidadao_cartilhas/Cartilha de Defesa Animal_cropped.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EoaU-tbGuaREpWZ82XxIB1IB0dws-vO0ziOBmi7xby8ooQ?e=H20yOE'),
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CartilhasIconTitle(
                      "Processo Civil                                  "),
                  CartilhasIconTitle(
                      "Registros Públicos                                "),
                ],
              ),
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CartilhasIconContainer(
                    'assets/img/cidadao_cartilhas/Mulheres em Situação de Violência no Contexto da Pandemia de Covid 19 - Capital_cropped.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EveT_cf0gDJEpmmDZHlxq0oBib9BvWpfM4VrdVKM9Z_gEw?e=l0X2SF'),
                CartilhasIconContainer(
                    'assets/img/cidadao_cartilhas/Cartilha Eleitoral a regra é clara_cropped.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EpZmUCV_zt9ItZrjSLjBVZcB3jtbNmcHb5qAPNvhqn2MMw?e=fz2EEW'),
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CartilhasIconTitle(
                      "Roteiros                                                  "),
                  CartilhasIconTitle(
                      "Termos                                                de Cooperação"),
                ],
              ),
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CartilhasIconContainer(
                    'assets/img/cidadao_cartilhas/Cidadão com Segurança_cropped.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EveT_cf0gDJEpmmDZHlxq0oBib9BvWpfM4VrdVKM9Z_gEw?e=l0X2SF'),
                CartilhasIconContainer(
                    'assets/img/cidadao_cartilhas/Coleta Seletiva - Pratique Esta Ideia_cropped.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EpZmUCV_zt9ItZrjSLjBVZcB3jtbNmcHb5qAPNvhqn2MMw?e=fz2EEW'),
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CartilhasIconTitle(
                      "Roteiros                                                  "),
                  CartilhasIconTitle(
                      "Termos                                                de Cooperação"),
                ],
              ),
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CartilhasIconContainer(
                    'assets/img/cidadao_cartilhas/Combate à Dengue_cropped.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EveT_cf0gDJEpmmDZHlxq0oBib9BvWpfM4VrdVKM9Z_gEw?e=l0X2SF'),
                CartilhasIconContainer(
                    'assets/img/cidadao_cartilhas/Combate à Dengue_cropped.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EpZmUCV_zt9ItZrjSLjBVZcB3jtbNmcHb5qAPNvhqn2MMw?e=fz2EEW'),
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CartilhasIconTitle(
                      "Roteiros                                                  "),
                  CartilhasIconTitle(
                      "Termos                                                de Cooperação"),
                ],
              ),
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CartilhasIconContainer(
                    'assets/img/cidadao_cartilhas/Combustíveis - Combate a Cartéis_cropped.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EveT_cf0gDJEpmmDZHlxq0oBib9BvWpfM4VrdVKM9Z_gEw?e=l0X2SF'),
                CartilhasIconContainer(
                    'assets/img/cidadao_cartilhas/Defesa da Concorrência_cropped.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EpZmUCV_zt9ItZrjSLjBVZcB3jtbNmcHb5qAPNvhqn2MMw?e=fz2EEW'),
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CartilhasIconTitle(
                      "Roteiros                                                  "),
                  CartilhasIconTitle(
                      "Termos                                                de Cooperação"),
                ],
              ),
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CartilhasIconContainer(
                    'assets/img/cidadao_cartilhas/Direito e Diversidade_cropped.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EveT_cf0gDJEpmmDZHlxq0oBib9BvWpfM4VrdVKM9Z_gEw?e=l0X2SF'),
                CartilhasIconContainer(
                    'assets/img/cidadao_cartilhas/Eleições 2010 - Propaganda Eleitoral na Internet_cropped.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EpZmUCV_zt9ItZrjSLjBVZcB3jtbNmcHb5qAPNvhqn2MMw?e=fz2EEW'),
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CartilhasIconTitle(
                      "Roteiros                                                  "),
                  CartilhasIconTitle(
                      "Termos                                                de Cooperação"),
                ],
              ),
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CartilhasIconContainer(
                    'assets/img/cidadao_cartilhas/Eleições e Combate à Corrupção_cropped.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EveT_cf0gDJEpmmDZHlxq0oBib9BvWpfM4VrdVKM9Z_gEw?e=l0X2SF'),
                CartilhasIconContainer(
                    'assets/img/cidadao_cartilhas/FUNDEB_cropped.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EpZmUCV_zt9ItZrjSLjBVZcB3jtbNmcHb5qAPNvhqn2MMw?e=fz2EEW'),
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CartilhasIconTitle(
                      "Roteiros                                                  "),
                  CartilhasIconTitle(
                      "Termos                                                de Cooperação"),
                ],
              ),
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CartilhasIconContainer(
                    'assets/img/cidadao_cartilhas/Gestão Ambiental - Faça sua parte_cropped.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EveT_cf0gDJEpmmDZHlxq0oBib9BvWpfM4VrdVKM9Z_gEw?e=l0X2SF'),
                CartilhasIconContainer(
                    'assets/img/cidadao_cartilhas/Guia Operacional de Enfrentamento à Violência Sexual contra Crianças e Adolescentes_cropped.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EpZmUCV_zt9ItZrjSLjBVZcB3jtbNmcHb5qAPNvhqn2MMw?e=fz2EEW'),
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CartilhasIconTitle(
                      "Roteiros                                                  "),
                  CartilhasIconTitle(
                      "Termos                                                de Cooperação"),
                ],
              ),
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CartilhasIconContainer(
                    'assets/img/cidadao_cartilhas/Guia Prático de Acessibilidade_cropped.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EveT_cf0gDJEpmmDZHlxq0oBib9BvWpfM4VrdVKM9Z_gEw?e=l0X2SF'),
                CartilhasIconContainer(
                    'assets/img/cidadao_cartilhas/Guia Prático de Direitos da Pessoa Idosa_cropped.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EpZmUCV_zt9ItZrjSLjBVZcB3jtbNmcHb5qAPNvhqn2MMw?e=fz2EEW'),
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CartilhasIconTitle(
                      "Roteiros                                                  "),
                  CartilhasIconTitle(
                      "Termos                                                de Cooperação"),
                ],
              ),
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CartilhasIconContainer(
                    'assets/img/cidadao_cartilhas/Habitação - Desenho Universal_cropped.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EveT_cf0gDJEpmmDZHlxq0oBib9BvWpfM4VrdVKM9Z_gEw?e=l0X2SF'),
                CartilhasIconContainer(
                    'assets/img/cidadao_cartilhas/Imprensa - Guia Prático de Relacionamento_cropped.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EpZmUCV_zt9ItZrjSLjBVZcB3jtbNmcHb5qAPNvhqn2MMw?e=fz2EEW'),
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CartilhasIconTitle(
                      "Roteiros                                                  "),
                  CartilhasIconTitle(
                      "Termos                                                de Cooperação"),
                ],
              ),
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CartilhasIconContainer(
                    'assets/img/cidadao_cartilhas/Instituições Privadas de Ensino Superior_cropped.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EveT_cf0gDJEpmmDZHlxq0oBib9BvWpfM4VrdVKM9Z_gEw?e=l0X2SF'),
                CartilhasIconContainer(
                    'assets/img/cidadao_cartilhas/Investigações Exitosas Realizadas pelo Ministério Público Brasileiro_cropped.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EpZmUCV_zt9ItZrjSLjBVZcB3jtbNmcHb5qAPNvhqn2MMw?e=fz2EEW'),
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CartilhasIconTitle(
                      "Roteiros                                                  "),
                  CartilhasIconTitle(
                      "Termos                                                de Cooperação"),
                ],
              ),
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CartilhasIconContainer(
                    'assets/img/cidadao_cartilhas/João Cidadão - Um jeito simples de entender seus direitos_cropped.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EveT_cf0gDJEpmmDZHlxq0oBib9BvWpfM4VrdVKM9Z_gEw?e=l0X2SF'),
                CartilhasIconContainer(
                    'assets/img/cidadao_cartilhas/Justiça e Educação em Heliópolis e Guarulhos parceria para a cidadania_cropped.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EpZmUCV_zt9ItZrjSLjBVZcB3jtbNmcHb5qAPNvhqn2MMw?e=fz2EEW'),
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CartilhasIconTitle(
                      "Roteiros                                                  "),
                  CartilhasIconTitle(
                      "Termos                                                de Cooperação"),
                ],
              ),
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CartilhasIconContainer(
                    'assets/img/cidadao_cartilhas/Lei Cidade Limpa_cropped.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EveT_cf0gDJEpmmDZHlxq0oBib9BvWpfM4VrdVKM9Z_gEw?e=l0X2SF'),
                CartilhasIconContainer(
                    'assets/img/cidadao_cartilhas/Manual Básico de Saúde Pública_cropped.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EpZmUCV_zt9ItZrjSLjBVZcB3jtbNmcHb5qAPNvhqn2MMw?e=fz2EEW'),
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CartilhasIconTitle(
                      "Roteiros                                                  "),
                  CartilhasIconTitle(
                      "Termos                                                de Cooperação"),
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
