import 'package:flutter/material.dart';
import 'package:task_manger/ui/widgets/task_card.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const TaskCard();
        },
        separatorBuilder: (context, index) {
          return SizedBox(height: 8);
        },
      ),
    );
  }
}
