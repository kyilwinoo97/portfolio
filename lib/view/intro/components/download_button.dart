import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../utils/colors.dart';

class DownloadButton extends StatelessWidget {
  const DownloadButton({super.key});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launchUrl(Uri.parse('https://drive.google.com/file/d/1Kj8pHkeAqA0CTfgjxYg8ZGRs6cH1uMj1/view?usp=sharing'));
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: defaultPadding/1.5,horizontal: defaultPadding*2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(color: yellowColor,offset: Offset(0, -1),blurRadius: 5),
              BoxShadow(color: blueColor,offset: Offset(0, 1),blurRadius: 5),
            ],
          gradient:  LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                blueColor,
                yellowColor,
              ]),
        ),
        child: Row(
          children: [
            Text(
              'Download CV',
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  color: blackColor,
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: defaultPadding/3,),
            const Icon(FontAwesomeIcons.download,size: 15,)

          ],
        ),
      ),
    );
  }
}