// ignore_for_file: prefer_const_constructors
import 'package:dribble_coffee_ui/theme/colors.dart';
import 'package:dribble_coffee_ui/util/coffee_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

//tabbar has its own state, so we need TickerProviderStateMixin to access it
class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    // tab controller
    TabController tabController = TabController(length: 4, vsync: this);

    return Scaffold(
      backgroundColor: CustomColors.customBlack,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 25),
            child: Icon(Icons.person),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Welcome text - find the best coffee for you
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Find the best coffee for you',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 38),
              ),
            ),

            SizedBox(
              height: 25,
            ),

            // search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: CustomColors.customGrey,
                  filled: true,
                  prefixIcon: Icon(
                    Icons.search,
                  ),
                  hintText: 'Find your coffee..',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: CustomColors.customBlack),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: CustomColors.customBlack),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),

            SizedBox(
              height: 15,
            ),

            // tab bar of coffee types
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                    labelPadding: const EdgeInsets.only(left: 0, right: 30),
                    controller: tabController,
                    labelColor: customOrange,
                    unselectedLabelColor:
                        CustomColors.customGreyLightUnselected,
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator:
                        CircleTabIndicator(color: customOrange, radius: 5),
                    labelStyle:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    tabs: const [
                      Tab(text: 'Cappuccino'),
                      Tab(text: 'Espresso'),
                      Tab(text: 'Latte'),
                      Tab(text: 'Flat White'),
                    ]),
              ),
            ),

            SizedBox(
              height: 15,
            ),

            // horizontal tabBarView of coffee tiles
            SizedBox(
              height: 300,
              width: double.maxFinite,
              child: TabBarView(
                controller: tabController,
                children: const [
                  CappuccinoBarItem(),
                  EspressoBarItem(),
                  LatteBarItem(),
                  FlatWhiteBarItem(),
                ],
              ),
            ),
            // Special for you text
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Special for you',
                  style: TextStyle(fontSize: 22),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),

            CoffeeSpecialTile(),
          ],
        ),
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;
  CircleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;
  _CirclePainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint paint = Paint();
    paint.color = color;
    paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
      configuration.size!.width / 2 - radius / 2 - 30 / 4,
      configuration.size!.height - radius,
    );
    canvas.drawCircle(
      offset + circleOffset,
      radius,
      paint,
    );
  }
}

class CappuccinoBarItem extends StatelessWidget {
  const CappuccinoBarItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: const [
        CoffeeTile(
          coffeeImagePath: 'lib/images/cappuccino_1.jpg',
          coffeeName: 'Cappuccino',
          coffeePrice: '4.00',
        ),
        CoffeeTile(
          coffeeImagePath: 'lib/images/cappuccino_1.jpg',
          coffeeName: 'Cappuccino',
          coffeePrice: '4.50',
        ),
        CoffeeTile(
          coffeeImagePath: 'lib/images/cappuccino_1.jpg',
          coffeeName: 'Cappuccino',
          coffeePrice: '5.60',
        ),
      ],
    );
  }
}

class EspressoBarItem extends StatelessWidget {
  const EspressoBarItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: const [
        CoffeeTile(
          coffeeImagePath: 'lib/images/cappuccino_1.jpg',
          coffeeName: 'Espresso',
          coffeePrice: '4.00',
        ),
        CoffeeTile(
          coffeeImagePath: 'lib/images/cappuccino_1.jpg',
          coffeeName: 'Espresso',
          coffeePrice: '4.50',
        ),
        CoffeeTile(
          coffeeImagePath: 'lib/images/cappuccino_1.jpg',
          coffeeName: 'Espresso',
          coffeePrice: '5.60',
        ),
      ],
    );
  }
}

class LatteBarItem extends StatelessWidget {
  const LatteBarItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: const [
        CoffeeTile(
          coffeeImagePath: 'lib/images/cappuccino_1.jpg',
          coffeeName: 'Latte',
          coffeePrice: '4.00',
        ),
        CoffeeTile(
          coffeeImagePath: 'lib/images/cappuccino_1.jpg',
          coffeeName: 'Latte',
          coffeePrice: '4.50',
        ),
        CoffeeTile(
          coffeeImagePath: 'lib/images/cappuccino_1.jpg',
          coffeeName: 'Latte',
          coffeePrice: '5.60',
        ),
      ],
    );
  }
}

class FlatWhiteBarItem extends StatelessWidget {
  const FlatWhiteBarItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: const [
        CoffeeTile(
          coffeeImagePath: 'lib/images/cappuccino_1.jpg',
          coffeeName: 'Flat White',
          coffeePrice: '4.00',
        ),
        CoffeeTile(
          coffeeImagePath: 'lib/images/cappuccino_1.jpg',
          coffeeName: 'Flat White',
          coffeePrice: '4.50',
        ),
        CoffeeTile(
          coffeeImagePath: 'lib/images/cappuccino_1.jpg',
          coffeeName: 'Flat White',
          coffeePrice: '5.60',
        ),
      ],
    );
  }
}
