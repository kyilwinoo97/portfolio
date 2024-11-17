import 'package:flutter/material.dart';
import '../../../../utils/colors.dart';
import 'drawer_image.dart';
class About extends StatelessWidget {
  const About({super.key});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: bgColor,
        child: const Column(
          children: [
            Spacer(flex: 2,),
            DrawerImage(),
            Spacer(),
            Text('Kyi Lwin Oo',style: TextStyle(
                fontWeight: FontWeight.w600,
                height: 1.5,
                color: bodyTextColor
            ),),
            SizedBox(height: defaultPadding/4,),
            Text('Senior Software Engineer',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  height: 1.5,
                color: bodyTextColor
              ),),
            Spacer(flex: 2,),
          ],
        ),
      ),
    );
  }
}
