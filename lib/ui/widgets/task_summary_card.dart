
import 'package:flutter/material.dart';

class TaskSummaryCard extends StatelessWidget {
  const TaskSummaryCard({
    super.key, required this.title, this.date,
  });

  final String title;
  final String? date;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      child: SizedBox(
        width: 170,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('$date',style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600
                )),
                const SizedBox(height: 4,),
                FittedBox(
                  child: Text(title,style: TextStyle(
                      color: Colors.grey
                  ),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}