import 'package:abovhack/Education/models/topics.dart';
import 'package:abovhack/Education/widgets/topic_card.dart';
import 'package:flutter/material.dart';

class TopicListScreen extends StatelessWidget {
  const TopicListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Topics"),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 1.0,
        ),
        itemCount: topics.length,
        itemBuilder: (context, index) {
          return TopicCard(topic: topics[index]);
        },
      ),
    );
  }
}
