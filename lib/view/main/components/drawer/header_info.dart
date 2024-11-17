import 'package:flutter/material.dart';
import '../../../../utils/colors.dart';

class AreaInfoText extends StatelessWidget {
  const AreaInfoText({super.key, required this.title, required this.text});
  final String title;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.only(bottom: defaultPadding/2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style: const TextStyle(color: bodyTextColor,fontWeight: FontWeight.w600,),),
          Text(text),
        ],
      ),
    );
  }
}