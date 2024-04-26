import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/widgets.dart';


class GoalsListScreen extends StatefulWidget {
  const GoalsListScreen({super.key});

  @override
  State<GoalsListScreen> createState() => _GoalListsScreenState();
}

class _GoalListsScreenState extends State<GoalsListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Goals"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () => {}, child: const Icon(Icons.add, size: 25.0),),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: SvgPicture.asset('assets/images/goals_icon.svg'), label: 'Goals' ),
        const BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Ongoing' ), 
        const BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
      ],),
      body:  Column(
        children: [
          Row(children: [ElevatedButton(onPressed: () => {}, child: const Text("All")), 
          ElevatedButton(onPressed: () => {}, child: const Text("Personal")), 
          ElevatedButton(onPressed: () => {}, child: const Text("Sport")), 
          ElevatedButton(onPressed: () => {}, child: const Text("Business"))],),
          const GoalWidget(),
        ],
      )
    );
  }
} 