import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GoalScreen extends StatefulWidget {
  const GoalScreen({super.key});

  @override
  State<GoalScreen> createState() => _GoalScreen();
}

class _GoalScreen extends State<GoalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(13.0),
                child: const Image(
                  alignment: Alignment.center,
                  image: AssetImage('assets/images/goal_1.jpg'),
                  width: 211,
                  height: 196,
                  fit: BoxFit.cover,
                )),
            Padding(
              padding: const EdgeInsets.only(top: 18, bottom: 33),
              child: Text(
                "Read 20 books this year",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: Icon(
                    Icons.stars,
                    color: Color.fromRGBO(73, 73, 73, 1),
                  ),
                ),
                Container(
                  constraints: const BoxConstraints(maxWidth: 260),
                  child: Text(
                    "I want to read 20 self-improvement books to make my life better",
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.calendar_today,
                        color: Color.fromRGBO(73, 73, 73, 1)),
                  ),
                  Text("May 31, 2024",
                      style: Theme.of(context).textTheme.labelLarge),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child:
                      Icon(Icons.label, color: Color.fromRGBO(73, 73, 73, 1)),
                ),
                Text("Personal", style: Theme.of(context).textTheme.labelLarge),
              ],
            )
          ],
        ));
  }
}
