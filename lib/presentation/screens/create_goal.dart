import 'package:flutter/material.dart';


class CreateGoalScreen extends StatefulWidget {
  const CreateGoalScreen({super.key});

  @override
  State<CreateGoalScreen> createState() => _CreateGoalScreen();
}

class _CreateGoalScreen extends State<CreateGoalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Create a goal",
          style: Theme.of(context).textTheme.headlineLarge,),
      ),
      body: Center(child: Text("Create a goal"),),
    );
  }
}