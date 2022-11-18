import 'package:flutter/material.dart';

import '../theme/colors.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: CustomColors.customBlack,
      body: Center(
        child: Text(
          'Notifications Page',
        ),
      ),
    );
  }
}
