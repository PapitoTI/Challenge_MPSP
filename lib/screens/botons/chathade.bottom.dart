import 'dart:math';

import 'package:MPSP/config/palette.dart';
import 'package:MPSP/views/promotor_view.dart';
import 'package:flutter/material.dart';

class ChatHade extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ChatHadeState();
}

int toggle = 1;

class _ChatHadeState extends State<ChatHade> with TickerProviderStateMixin {
  final GlobalKey _bottomKey = GlobalKey();
  bool isOpened = false;
  AnimationController _animationController;
  AnimationController _bon;
  TextEditingController _textEditingController;
  Animation<Color> _buttonColor;
  Animation<double> _animationIcon;
  Animation<double> _translateButton;
  Curve _curve = Curves.easeOut;
  double _fabHeight = 56.0;

  Size bottomSize;
  Offset bottomLocation = Offset(0, 400);

  void getBottomSize() {
    RenderBox _bottomBox = _bottomKey.currentContext.findRenderObject();
    bottomSize = _bottomBox.size;
  }

  void onDragUpdate(BuildContext context, DragUpdateDetails details) {
    ///Localização de gesto
    final RenderBox box = context.findRenderObject();
    final Offset offset = box.globalToLocal(details.globalPosition);

    ///Area de tela
    final double startX = 0;
    final double endX = context.size.width - bottomSize.width;

    final double startY = MediaQuery.of(context).padding.top;
    final double endY = context.size.height - bottomSize.height;

    ///Certifique-se de que o widget esteja sempre dentro da área da tela
    if (startX < offset.dx && offset.dx < endX) {
      if (startY < offset.dy && offset.dy < endY) {
        ///atualizando localização
        setState(() {
          bottomLocation = Offset(offset.dx, offset.dy);
        });
      }
    }
  }

  void onDragEnd(BuildContext context, DragEndDetails details) {
    ///Certifique-se de que o widget estará localizado do lado esquerdo ou direito

    ///Última localização: bottomLocation
    final double pointX = context.size.width / 2;

    if (bottomLocation.dx + bottomSize.width / 2 < pointX) {
      setState(() {
        bottomLocation = Offset(0, bottomLocation.dy);
      });
    } else {
      setState(() {
        bottomLocation =
            Offset(context.size.width - bottomSize.width, bottomLocation.dy);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async => getBottomSize());
    _textEditingController = TextEditingController();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 400))
          ..addListener(() {
            setState(() {});
          });
    //controle do botão de pesquisa
    _bon = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 375),
    );
    _animationIcon =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);
    _buttonColor =
        ColorTween(begin: Palette.vermelhompsp, end: Palette.brancompsp)
            .animate(CurvedAnimation(
                parent: _animationController,
                curve: Interval(0.00, 1.00, curve: Curves.linear)));
    _translateButton = Tween<double>(begin: _fabHeight, end: -14.0).animate(
        CurvedAnimation(
            parent: _animationController,
            curve: Interval(0.0, 0.75, curve: _curve)));
  }

  @override
  void dispose() {
    super.dispose();
  }

//colocar um trasforma no container
  Widget buttonBusca() {
    ///tamanho da expansão Cor amber
    return Container(
      color: Colors.amber,
      height: 100,
      width: 350.0,
      alignment: Alignment(-0.10, 0.0),
      child: AnimatedContainer(
        //campo de pesquisa rosa
        duration: Duration(milliseconds: 375),
        height: 55,
        width: (toggle == 1) ? 55.0 : 325,
        curve: Curves.easeOut,
        decoration: BoxDecoration(
          color: Palette.brancompsp,
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              spreadRadius: -10.0,
              blurRadius: 10.0,
              offset: Offset(0.0, 10.0),
            ),
          ],
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              //botão de audio
              duration: Duration(milliseconds: 375),
              top: 6.0,
              right: 7.0,
              child: AnimatedOpacity(
                opacity: (toggle == 1) ? 0.0 : 1.0,
                duration: Duration(milliseconds: 200),
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Palette.brancompsp,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: AnimatedBuilder(
                    child: Icon(
                      Icons.mic,
                      size: 25.0,
                      color: Colors.black,
                    ),
                    builder: (context, widget) {
                      return Transform.rotate(
                        angle: _bon.value * 2.0 * pi,
                        child: widget,
                      );
                    },
                    animation: _bon,
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              ///campo do texto
              duration: Duration(milliseconds: 375),
              left: (toggle == 1) ? 20.0 : 50.0,
              top: 13.0,
              curve: Curves.easeOut,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 200),
                opacity: (toggle == 1) ? 0.0 : 1.0,
                child: Container(
                  height: 23,
                  width: 180,
                  child: TextField(
                    cursorRadius: Radius.circular(10.0),
                    cursorWidth: 2.0,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      labelText: 'Search ...',
                      labelStyle: TextStyle(
                        color: Colors.black87,
                        fontSize: 17.0,
                        fontWeight: FontWeight.w500,
                      ),
                      alignLabelWithHint: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide.none),
                    ),
                  ),
                ),
              ),
            ),
            Material(
              /// campo do icone azul e controle de tamanho
              /// chamar o lucas para refinar a logica
              color: Palette.azulmpsp,

              borderRadius: BorderRadius.circular(30.0),
              child: IconButton(
                iconSize: 43,
                onPressed: () {
                  setState(() {
                    if (toggle == 0) {
                      toggle = 1;
                      _bon.forward();
                    } else {
                      toggle = 0;
                      _bon.reverse();
                    }
                  });
                },
                icon: Icon(Icons.search),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buttonBug() {
    return FloatingActionButton(
      heroTag: "btn2",
      onPressed: () {},
      tooltip: "Bug",
      child: Icon(Icons.bug_report),
    );
  }

  Widget buttonFAQ() {
    return FloatingActionButton(
      backgroundColor: Palette.vermelhompsp,
      foregroundColor: Colors.black,
      heroTag: "btn3",
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => Promotor(),
          ),
        );
      },
      tooltip: "FAQ",
      child: Icon(Icons.supervised_user_circle),
    );
  }

  Widget buttonMenu() {
    return FloatingActionButton(
      key: _bottomKey,
      onPressed: animate,
      tooltip: "Menu",
      child: AnimatedIcon(
        icon: AnimatedIcons.menu_close,
        progress: _animationIcon,
      ),
    );
  }

  animate() {
    if (!isOpened)
      _animationController.forward();
    else
      _animationController.reverse();
    isOpened = !isOpened;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (DragUpdateDetails details) =>
          onDragUpdate(context, details),
      onHorizontalDragUpdate: (DragUpdateDetails details) =>
          onDragUpdate(context, details),
      onVerticalDragEnd: (DragEndDetails details) =>
          onDragEnd(context, details),
      onHorizontalDragEnd: (DragEndDetails details) =>
          onDragEnd(context, details),
      child: Stack(
        children: [
          Positioned(
            child: Column(
              children: [
                Transform(
                  transform: Matrix4.translationValues(
                      10.5, _translateButton.value * 3.0, 0.0),
                  child: buttonBusca(),
                ),
                Transform(
                  transform: Matrix4.translationValues(
                      0.0, _translateButton.value * 2.0, 0.0),
                  child: buttonBug(),
                ),
                Transform(
                  transform: Matrix4.translationValues(
                      0.0, _translateButton.value, 0.0),
                  child: buttonFAQ(),
                ),
                buttonMenu()
              ],
            ),
            left: bottomLocation.dx,
            top: bottomLocation.dy,
          )
        ],
      ),
    );
  }
}
