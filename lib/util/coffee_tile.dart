import 'package:dribble_coffee_ui/theme/colors.dart';
import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final String coffeeImagePath;
  final String coffeeName;
  final String coffeePrice;
  const CoffeeTile({
    required this.coffeeImagePath,
    required this.coffeeName,
    required this.coffeePrice,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 25),
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(12),
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: CustomColors.customGreyLight,
            gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  CustomColors.customGreyLight,
                  CustomColors.customBlack,
                ]),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // coffee image
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  coffeeImagePath,
                  width: 180,
                  height: 150,
                ),
              ),

              // coffee name
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      coffeeName,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'with almond milk',
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                  ],
                ),
              ),
              // price

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.attach_money_rounded,
                          color: customOrange,
                        ),
                        Text(
                          coffeePrice,
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: customOrange,
                        borderRadius: BorderRadius.circular(11),
                      ),
                      child: const Icon(
                        Icons.add,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CoffeeSpecialTile extends StatelessWidget {
  const CoffeeSpecialTile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0, bottom: 25, right: 25),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: CustomColors.customGreyLight,
            gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  CustomColors.customGreyLight,
                  CustomColors.customBlack,
                ]),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // coffee image
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'lib/images/cappuccino_1.jpg',
                  width: 120,
                  height: 120,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              // special title
              const Expanded(
                child: Text(
                  '5 Coffee Beans You Must Try!',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
