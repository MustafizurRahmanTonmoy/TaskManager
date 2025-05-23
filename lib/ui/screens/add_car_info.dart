import 'package:flutter/material.dart';
import 'package:task_manger/ui/widgets/tm_app_bar.dart';

class AddNewCarInfo extends StatefulWidget {
  const AddNewCarInfo({super.key});

  @override
  State<AddNewCarInfo> createState() => _AddNewCarInfoState();
}

class _AddNewCarInfoState extends State<AddNewCarInfo> {
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
              Text('Car Information',style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 26,),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  hintText: 'Car Brand',
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Car Model',
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Registration Number',
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Colour',
                ),
              ),
              const SizedBox(height: 8,),
              TextFormField(
                maxLines: 5,
                decoration: const InputDecoration(
                  hintText: 'Describe Problem',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
