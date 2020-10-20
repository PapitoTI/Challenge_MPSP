import 'package:flutter/material.dart';

class ChatHade extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ChatHadeState();
}

class _ChatHadeState extends State<ChatHade> {
  final GlobalKey _bottomKey = GlobalKey();
  Size bottomSize;
  Offset bottomLocation = Offset(0, 500);

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
    WidgetsBinding.instance.addPostFrameCallback((_) => getBottomSize());
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
            child: FloatingActionButton(
              key: _bottomKey,
              onPressed: null,
              backgroundColor: Colors.amber,
            ),
            left: bottomLocation.dx,
            top: bottomLocation.dy,
          )
        ],
      ),
    );
  }
}
