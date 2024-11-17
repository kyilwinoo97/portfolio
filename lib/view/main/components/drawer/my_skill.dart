import 'package:flutter/material.dart';
import 'package:portfolio/model/skills_model.dart';

import '../../../../utils/colors.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator(
      {super.key, required this.percentage, required this.title, this.image});

  final double percentage;
  final String title;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: TweenAnimationBuilder(
        tween: Tween(begin: 0.0, end: percentage),
        duration: const Duration(seconds: 1),
        builder: (context, value, child) {
          return Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    image!,
                    height: 15,
                    width: 15,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    title,
                    style: const TextStyle(color: bodyTextColor),
                  ),
                  const Spacer(),
                  Text('${(value * 100).toInt().toString()}%'),
                ],
              ),
              const SizedBox(
                height: defaultPadding / 2,
              ),
              LinearProgressIndicator(
                value: value,
                backgroundColor: bodyTextColor,
                color: const Color(0xECE0D304),
              ),
            ],
          );
        },
      ),
    );
  }
}

class MySKills extends StatelessWidget {
  const MySKills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListView.builder(
            itemCount: skillList.length,
            shrinkWrap: true,
            padding: const EdgeInsets.all(4.0),
            itemBuilder: (context, index) {
              var skill = skillList[index];
              return AnimatedLinearProgressIndicator(
                percentage: skill.percentage,
                title: skill.title,
                image: skill.image,
              );
            }),
      ],
    );
  }
}

var skillList = [
  SkillModel(
      percentage: 0.9, title: "Flutter", image: "assets/icons/flutter.png"),
  SkillModel(percentage: 0.9, title: 'Dart', image: 'assets/icons/dart.png'),
  SkillModel(percentage: 0.9, title: "Java", image: "assets/icons/java.png"),
  SkillModel(
      percentage: 0.9, title: "Kotlin", image: "assets/icons/kotlin.jpeg"),
  SkillModel(
      percentage: 0.9, title: "Android", image: "assets/icons/android.jpg"),
  SkillModel(percentage: 0.74, title: "iOS", image: "assets/icons/ios.png"),
  SkillModel(
      percentage: 0.8,
      title: "Spring Boot",
      image: "assets/icons/spring_boot.png"),
  SkillModel(percentage: 0.9, title: "Git", image: "assets/icons/git.png"),
  SkillModel(
      percentage: 0.9,
      title: 'Clean Architecture',
      image: 'assets/icons/clean_archi.png'),
  SkillModel(percentage: 0.9, title: "MySql", image: "assets/icons/mysql.png"),
  SkillModel(percentage: 0.9, title: "Firebase", image: "assets/icons/firebase.png"),
];
