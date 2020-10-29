import 'package:MPSP/config/palette.dart';
import 'package:flutter/material.dart';

class ChatHead extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ChatHeadState();
}

class _ChatHeadState extends State<ChatHead> with TickerProviderStateMixin {
  final GlobalKey _bottomKey = GlobalKey();
  bool isOpened = false;
  AnimationController _animationController;
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
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 400))
          ..addListener(() {
            setState(() {});
          });
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

  Widget buttonBusca() {
    return FloatingActionButton(
      heroTag: "btn1",
      onPressed: () {},
      tooltip: "Busca",
      child: Icon(Icons.search),
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
      onPressed: () {},
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
                      0.0, _translateButton.value * 3.0, 0.0),
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
