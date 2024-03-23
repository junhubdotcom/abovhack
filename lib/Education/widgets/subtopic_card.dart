import 'package:abovhack/Education/models/topics.dart';
import 'package:abovhack/Education/screens/lesson_page.dart';
import 'package:flutter/material.dart';

class SubtopicCard extends StatefulWidget {
  final Subtopic subtopic;
  final VoidCallback? onLessonCompletion;

  const SubtopicCard(
      {Key? key, required this.subtopic, this.onLessonCompletion})
      : super(key: key);

  @override
  _SubtopicCardState createState() => _SubtopicCardState();
}

class _SubtopicCardState extends State<SubtopicCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
          int initialLessonIndex = 0;
          for (int i = 0; i < widget.subtopic.lessons.length; i++) {
            if (!widget.subtopic.lessons[i].isCompleted) {
              initialLessonIndex = i;
              break;
            }
          }
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LessonPage(
                subtopic: widget.subtopic,
                initialLessonIndex: initialLessonIndex,
                onLessonCompletion: () {
                  setState(() {
                    if (widget.onLessonCompletion != null) {
                      widget.onLessonCompletion!();
                    }
                  });
                },
              ),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Icon(widget.subtopic.icon),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      widget.subtopic.name,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              LinearProgressIndicator(
                value: _calculateProgress(widget.subtopic),
                backgroundColor: Colors.grey[300],
                valueColor:
                    const AlwaysStoppedAnimation<Color>(Colors.lightGreen),
              ),
              const SizedBox(height: 10),
              Center(
                child: Text(
                  _isSubtopicCompleted(widget.subtopic)
                      ? 'Completed!'
                      : 'In Progress',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: _isSubtopicCompleted(widget.subtopic)
                        ? Colors.green
                        : Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: widget.subtopic.lessons.length,
                itemBuilder: (context, index) {
                  return LessonListItem(
                    subtopic: widget.subtopic,
                    lesson: widget.subtopic.lessons[index],
                    onCompletionChanged: () {
                      setState(() {
                        if (widget.onLessonCompletion != null) {
                          widget.onLessonCompletion!();
                        }
                      });
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  double _calculateProgress(Subtopic subtopic) {
    int completedCount =
        subtopic.lessons.where((lesson) => lesson.isCompleted).length;
    return completedCount / subtopic.lessons.length;
  }

  bool _isSubtopicCompleted(Subtopic subtopic) {
    return subtopic.lessons.every((lesson) => lesson.isCompleted);
  }
}

class LessonListItem extends StatelessWidget {
  final Lesson lesson;
  final Subtopic subtopic;
  final VoidCallback? onCompletionChanged;

  const LessonListItem(
      {Key? key,
      required this.lesson,
      required this.subtopic,
      this.onCompletionChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LessonPage(
              subtopic: subtopic,
              initialLessonIndex: subtopic.lessons.indexOf(lesson),
              onLessonCompletion: () {
                if (onCompletionChanged != null) {
                  onCompletionChanged!();
                }
              },
            ),
          ),
        );
      },
      leading: Icon(
        lesson.isCompleted ? Icons.check_circle : Icons.radio_button_unchecked,
        color: lesson.isCompleted ? Colors.lightGreen : Colors.grey,
      ),
      title: Text(
        lesson.name,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
