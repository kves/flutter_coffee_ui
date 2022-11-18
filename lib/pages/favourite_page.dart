import 'package:flutter/material.dart';

import '../theme/colors.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: CustomColors.customBlack,
      body: Center(
        child: Text(
          'Favourite Page',
        ),
      ),
    );
  }
}
