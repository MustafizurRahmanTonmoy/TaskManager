import 'package:flutter/material.dart';
import 'package:task_manger/ui/screens/add_car_info.dart';
import 'package:task_manger/ui/utils/app_colors.dart';
import 'package:task_manger/ui/widgets/task_card.dart';
import 'package:task_manger/ui/widgets/task_summary_card.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildSummarySection(),
          Expanded(
            child: ListView.separated(
              itemCount: 10,
              itemBuilder: (context, index) {
                return const TaskCard();
              },
              separatorBuilder: (context, index) {
                return SizedBox(height: 8);
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onTapAddFAB,
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _buildSummarySection() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            TaskSummaryCard(
              title: 'Delivery Reminder',
              date: '05/23/2025', // Example date; replace with dynamic data
            ),
            SizedBox(width: 8), // Add spacing between cards
            TaskSummaryCard(
              title: 'Previous Service',
              date: '19/03/2025', // Example date; replace with dynamic data
            ),
          ],
        ),
      ),
    );
  }

  void _onTapAddFAB() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddNewCarInfo()),
    );
  }
}


