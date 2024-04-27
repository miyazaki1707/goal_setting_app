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
      Column(
        children: [
        const Text(
          'Read 20 books this year',
          ),
        const Text("56 days left"),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
            const Dash(
              direction: Axis.horizontal,
              dashLength: 12,
              dashColor: Color.fromRGBO(203, 203, 203, 1)),
              const SizedBox(
                width: 100,
                child: Divider(
                  thickness: 2,
                  color: Colors.black,
                ),
              ),
             Container(
              margin: const EdgeInsets.only(left: 150),
              width: 15.0,
              height: 15.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.red,
                  width: 2.0,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 30),
              width: 15.0,
              height: 15.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.purple,
                  width: 2.0,
                ),
              ),
          )  
            ],),
        )],
      )],
    );
  }
}