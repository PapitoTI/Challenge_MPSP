import 'package:MPSP/bloc/navigation.bloc/navigation.bloc.dart';
import 'package:MPSP/config/pallet.dart';
import 'package:MPSP/widgets/consumidor_widgets.dart';
import 'package:MPSP/widgets/criminal_widgets.dart';
import 'package:MPSP/widgets/top_container.dart';
import 'package:flutter/material.dart';
import 'package:MPSP/widgets/cartilhas_widgets.dart';

class Cidadao extends StatelessWidget with NavigationStates {
  final Function onMenuTap;

  Cidadao({Key key, this.onMenuTap}) : super(key: key);
  static const double boxSize = 70;
  static const double spaceIconToTitle = 5;
  static const double spaceTitleToIcon = 10;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                color: Palett.vermelhompsp2,
                height: 80,
                width: width,
                child: Padding(
                  padding: const EdgeInsets.only(top: 25),
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
                              color: Palett.brancompsp,
                            ),
                            onTap: onMenuTap,
                          ),
                          Text(
                            "Cidadão",
                            style: TextStyle(
                                fontSize: 24,
                                color: Palett.brancompsp,
                                fontFamily: "Roboto"),
                          ),
                          Icon(
                            Icons.chat,
                            color: Palett.brancompsp,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Palett.vermelhompsp2,
                child: TabBar(
                    labelColor: Palett.vermelhompsp2,
                    unselectedLabelColor: Palett.brancompsp,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        color: Palett.brancompsp),
                    tabs: [
                      Tab(
                        icon: Icon(Icons.account_circle),
                        text: 'Cartilhas',
                      ),
                      Tab(
                        icon: Icon(Icons.account_circle),
                        text: 'Conheça o MP',
                      ),
                      Tab(
                        icon: Icon(Icons.account_circle),
                        text: 'Fale Conosco',
                      ),
                    ]),
              ),
              Flexible(
                child: TabBarView(
                  children: [CartilhasPage(), ConsumidorPage(), CriminalPage()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
