import 'package:flutter/material.dart';

import '../../../../utils/colors.dart';
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: defaultPadding/2,),
        AreaInfoText(title: 'Contact', text: '+66634482770'),
        AreaInfoText(title: 'Email', text: 'kyilwinoo.work@gmail.com'),
        SizedBox(
          height: defaultPadding,
        ),
        Text('Skills',
          style: TextStyle(
          color: bodyTextColor,
          fontWeight: FontWeight.w600,),),
        SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}
