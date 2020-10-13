/*import 'package:MPSP/config/pallet.dart';
import 'package:flutter/material.dart';

class NavegationScreen extends StatefulWidget {
  const NavegationScreen({Key key}) : super(key: key);
  @override
  _NavegationScreenState createState() => _NavegationScreenState();
}

class _NavegationScreenState extends State<NavegationScreen>
    with SingleTickerProviderStateMixin {
  bool isCollapsed = true;
  final Duration duration = const Duration(milliseconds: 300);
  AnimationController _controller;
  Animation<double> _scaleAnimation;
  double screenWidth, screenHeight;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

    return AnimatedPositioned(
      duration: duration,
      top: 0,
      bottom: 0,
      left: isCollapsed ? 0 : 0.6 * screenWidth,
      right: isCollapsed ? 0 : -0.4 * screenWidth,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Material(
          animationDuration: const Duration(milliseconds: 300),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          elevation: 8,
          color: Palett.brancompsp,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: ClampingScrollPhysics(),
            child: Container(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20), //para o oneaction tive que colocar

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                          child: Icon(
                            Icons.menu,
                            color: Palett.vermelhompsp,
                          ),
                          onTap: () {
                            ///mudar para mobx
                            ///isCollapsed = !isCollapsed;
                            setState(() {
                              if (isCollapsed)
                                _controller.forward();
                              else
                                _controller.reverse();
                              isCollapsed = !isCollapsed;
                            });
                          },
                        ),
                        Text(
                          "MPSP",
                          style: TextStyle(
                              fontSize: 24, color: Palett.vermelhompsp),
                        ),
                        Icon(
                          Icons.chat,
                          color: Palett.vermelhompsp,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 200,
                    child: PageView(
                      controller: PageController(viewportFraction: 0.8),
                      scrollDirection: Axis.horizontal,
                      pageSnapping: true,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          color: Palett.vermelhompsp,
                          width: 100,
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
                  Text(
                    'Serviços',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text("Serviço1"),
                        subtitle: Text("Area"),
                        trailing: Text("Descrição"),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider(height: 16);
                    },
                    itemCount: 9,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
*/
