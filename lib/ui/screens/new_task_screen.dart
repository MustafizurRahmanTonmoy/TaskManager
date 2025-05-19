import 'package:flutter/material.dart';
import 'package:task_manger/ui/screens/add_new_task_screen.dart';
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
          _buildSummarSection(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onTapAddFAB,
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _buildSummarSection() {
    return Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                TaskSummaryCard(
                  count: 9,
                  tittle: 'New',
                ),
                TaskSummaryCard(
                  count: 9,
                  tittle: 'Completed',
                ),
                TaskSummaryCard(
                  count: 9,
                  tittle: 'Cancelled',
                ),
                TaskSummaryCard(
                  count: 9,
                  tittle: 'Progress',
                ),
              ],
            ),
          ),
        );
  }
  void _onTapAddFAB() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddNewTaskScreen()),
    );
  }
}


