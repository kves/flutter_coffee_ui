import 'package:flutter/material.dart';

import '../theme/colors.dart';

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: CustomColors.customBlack,
      body: Center(
        child: Text(
          'Shopping cart Page',
        ),
      ),
    );
  }
}
