// ignore_for_file: library_private_types_in_public_api

import 'package:abovhack/Education/models/topics.dart';
import 'package:abovhack/Education/screens/lesson_page.dart';
import 'package:abovhack/Education/widgets/subtopic_card.dart';
import 'package:flutter/material.dart';

class SubtopicListScreen extends StatefulWidget {
  final Topic topic;

  const SubtopicListScreen({super.key, required this.topic});

  @override
  _SubtopicListScreenState createState() => _SubtopicListScreenState();
}

class _SubtopicListScreenState extends State<SubtopicListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff3f3),
      appBar: AppBar(
        title: Text(widget.topic.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: List.generate(
            widget.topic.subtopics.length,
            (index) => Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GestureDetector(
                  onTap: () {
                    int initialLessonIndex = 0;
                    for (int i = 0;
                        i < widget.topic.subtopics[index].lessons.length;
                        i++) {
                      if (!widget
                          .topic.subtopics[index].lessons[i].isCompleted) {
                        initialLessonIndex = i;
                        break;
                      }
                    }
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LessonPage(
                          subtopic: widget.topic.subtopics[index],
                          initialLessonIndex: initialLessonIndex,
                          onLessonCompletion: () {
                            setState(() {});
                          },
                        ),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child:
                        SubtopicCard(subtopic: widget.topic.subtopics[index]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
