import 'package:flutter/material.dart';

import '../../../../utils/colors.dart';

class DrawerImage extends StatelessWidget {
  const DrawerImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      padding: const EdgeInsets.all(defaultPadding/6),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient:  LinearGradient(
            colors: [
              blueColor,
              yellowColor,
            ],
          ),
          boxShadow:  [
            BoxShadow(color: yellowColor,blurRadius: 10,offset: Offset(0, 2)),
            BoxShadow(color: blueColor,blurRadius: 10,offset: Offset(0, -2)),
          ]
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Transform.rotate(
              angle: 0.0,
              child: Image.asset('assets/images/profile.jpeg',fit: BoxFit.cover,))),
    );
  }
}