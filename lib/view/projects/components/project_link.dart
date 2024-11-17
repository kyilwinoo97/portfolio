import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../utils/colors.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../model/project_model.dart';
import 'image_viewer.dart';

class ProjectLinks extends StatelessWidget {
  final int index;

  const ProjectLinks({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            const Text('Check on Github',
                style: TextStyle(color: blackColor),
                overflow: TextOverflow.ellipsis),
            IconButton(
                onPressed: () {
                  launchUrl(Uri.parse(projectList[index].link));
                },
                icon: SvgPicture.asset('assets/icons/github.svg')),
          ],
        ),
        const Spacer(),
        TextButton(
            onPressed: () {
              if(projectList[index].image.isNotEmpty){
                ImageViewer(context,projectList[index].image);
              }
            },
            child: const Text(
              'Read More>>',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                  fontSize: 10),
            ))
      ],
    );
  }
}
