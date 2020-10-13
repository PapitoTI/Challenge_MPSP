/*import 'package:MPSP/config/pallet.dart';
import 'package:flutter/material.dart';

class MenuController extends StatefulWidget {
  const MenuController({Key key}) : super(key: key);
  @override
  _MenuControllerState createState() => _MenuControllerState();
}

class _MenuControllerState extends State<MenuController>
    with SingleTickerProviderStateMixin {
  final Duration duration = const Duration(milliseconds: 300);
  Animation<double> _menuAnimation;
  Animation<Offset> _slideAnimation;
  AnimationController _controller;
  double screenWidth, screenHeight;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _menuAnimation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _slideAnimation = Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0))
        .animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
*/
