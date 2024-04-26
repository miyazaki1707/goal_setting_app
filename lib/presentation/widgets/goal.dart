import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';


class GoalWidget extends StatefulWidget {
  const GoalWidget({super.key});

  @override
  State<GoalWidget> createState() => _GoalWidgetState();
}

class _GoalWidgetState extends State<GoalWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [ClipRRect(borderRadius: BorderRadius.circular(13.0), child: const Image(image: AssetImage('assets/images/goal_1.jpg'), width: 114, height: 106, fit: BoxFit.cover,)),
      const Column(
        children: [
        Text('Read 20 books this year'),
        Text("56 days left"),
        Stack(children: [
          Dash(
            direction: Axis.horizontal,
            dashLength: 12,
            dashColor: Colors.red)],)],
      )],
    );
  }
}