import 'package:flutter/material.dart';

var bannerItems = [
  "Item 1",
  "Item 2",
  "Item 3",
  "Item 4",
  "Item 5",
  "Item 6",
  "Item 7",
];
var bannerLeis = [
  "assets/images/capa.jpeg",
  "assets/images/feminicidio.jpeg",
  "assets/images/lei-carolina.jpeg",
  "assets/images/lei-joana.jpeg",
  "assets/images/lei-maria.jpeg",
  "assets/images/minuto.jpeg",
  "assets/images/stealthing.jpeg",
];

class BannerMulher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    PageController controller =
        PageController(viewportFraction: 0.7, initialPage: 1);
    List<Widget> banners = new List<Widget>();

    for (int x = 0; x < bannerItems.length; x++) {
      var bannerView = Container(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              bannerLeis[x],
              fit: BoxFit.cover,
            )
          ],
        ),
      );
      banners.add(bannerView);
    }
    return Container(
      width: screenWidth,
      height: screenWidth * 9 / 16,
      child: PageView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: banners,
      ),
    );
  }
}
