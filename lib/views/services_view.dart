import 'package:MPSP/bloc/navigation.bloc/navigation_bloc.dart';
import 'package:MPSP/config/palette.dart';
import 'package:MPSP/screens/buttons/chathead.button.dart';
import 'package:flutter/material.dart';

class Services extends StatelessWidget with NavigationStates {
  final Function onMenuTap;

  const Services({Key key, this.onMenuTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 58),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(40)),
            //color: Palett.fiap,
          ),
          child: Column(
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
                        color: Palette.vermelhompsp,
                      ),
                    ),
                    onTap: onMenuTap,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 90),
                    child: Text(
                      "Serviços",
                      style:
                          TextStyle(fontSize: 24, color: Palette.vermelhompsp),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          child: ListWheelScrollView(
            useMagnifier: true,
            diameterRatio: 2,
            itemExtent: 140,
           //offAxisFraction: 0.5,
            children: [
              //1
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue,
                ),
              ),
              //2
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue,
                ),
              ),
              //3
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue,
                ),
              ),
              //4
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue,
                ),
              ),
              //5
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue,
                ),
              ),
              //6
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue,
                ),
              ),
              //7
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue,
                ),
              ),
              //8
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue,
                ),
              ),
              //9
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue,
                ),
              ),
              //10
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue,
                ),
              ),
              //11
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue,
                ),
              ),
              //12
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue,
                ),
              ),
              //13
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue,
                ),
              ),
              //14
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue,
                ),
              ),
              //15
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue,
                ),
              ),
              //16
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue,
                ),
              ),
              //17
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        ChatHead()
      ],
    );
  }
}
