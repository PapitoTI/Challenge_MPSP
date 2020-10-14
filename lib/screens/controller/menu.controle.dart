import 'package:MPSP/bloc/navigation.bloc/navigation.bloc.dart';
import 'package:MPSP/config/pallet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MenuController extends StatelessWidget {
  final Animation<double> menuAnimation;
  final Animation<Offset> slideAnimation;
  final int bottonColor;

  const MenuController(
      {Key key, this.menuAnimation, this.slideAnimation, this.bottonColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: slideAnimation,
      child: ScaleTransition(
        scale: menuAnimation,
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      BlocProvider.of<NavigationBloc>(context)
                          .add(NavigationEvents.InstitucionalClickedEvent);
                    },
                    child: Text(
                      "INSTITUCIONAL",
                      style: TextStyle(
                        color: Palett.brancompsp,
                        fontSize: 24,
                        fontWeight: bottonColor == 0
                            ? FontWeight.w900
                            : FontWeight.normal,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  GestureDetector(
                    onTap: () {
                      BlocProvider.of<NavigationBloc>(context)
                          .add(NavigationEvents.AreaClickedEvent);
                    },
                    child: Text(
                      "ÁREAS DE ATUAÇÃO",
                      style: TextStyle(
                        color: Palett.brancompsp,
                        fontSize: 24,
                        fontWeight: bottonColor == 1
                            ? FontWeight.w900
                            : FontWeight.normal,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  GestureDetector(
                    onTap: () {
                      BlocProvider.of<NavigationBloc>(context)
                          .add(NavigationEvents.CidadaoClickedEvent);
                    },
                    child: Text(
                      "CIDADÃO",
                      style: TextStyle(
                        color: Palett.brancompsp,
                        fontSize: 24,
                        fontWeight: bottonColor == 2
                            ? FontWeight.w900
                            : FontWeight.normal,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  GestureDetector(
                    onTap: () {
                      BlocProvider.of<NavigationBloc>(context)
                          .add(NavigationEvents.ServicesClickedEvents);
                    },
                    child: Text(
                      "SERVIÇOS",
                      style: TextStyle(
                        color: Palett.brancompsp,
                        fontSize: 24,
                        fontWeight: bottonColor == 3
                            ? FontWeight.w900
                            : FontWeight.normal,
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
