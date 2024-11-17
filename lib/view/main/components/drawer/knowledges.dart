import 'package:flutter/material.dart';
import '../../../../utils/colors.dart';

import 'knowledge.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text('Knowledge',style: TextStyle(color: bodyTextColor,fontWeight: FontWeight.w600,),),
        ),
        KnowledgeText(knowledge: 'Docker, Github Action , CI/CD'),
        KnowledgeText(knowledge: 'End-to-End Encryption'),
        KnowledgeText(knowledge: 'Performance Optimization'),
        KnowledgeText(knowledge: 'Animation & UI/UX'),
      ],
    );
  }

}
