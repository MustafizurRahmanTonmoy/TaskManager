import 'package:flutter/material.dart';
import 'package:task_manger/ui/widgets/tm_app_bar.dart';

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({super.key});

  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 42,),
              Text('Add New Task',style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 26,),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Tittle',
                ),
              ),
              const SizedBox(height: 8,),
              TextFormField(
                maxLines: 5,
                decoration: const InputDecoration(
                  hintText: 'Description',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
