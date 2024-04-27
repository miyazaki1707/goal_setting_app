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
        title: Text(
          "Goals",
          style: Theme.of(context).textTheme.headlineLarge,),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () => {}, child: const Icon(Icons.add, size: 25.0),),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: SvgPicture.asset('assets/images/goals_icon.svg'), label: 'Goals' ),
        const BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Ongoing' ), 
        const BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
      ],),
      body:  Column(
        children: [
          Row(children: [
            ElevatedButton(onPressed: () => {}, child: Text("All", style: Theme.of(context).textTheme.labelMedium),
             style: ButtonStyle(backgroundColor:  MaterialStateProperty.all<Color>(Theme.of(context).colorScheme.primary)),), 
            ElevatedButton(onPressed: () => {}, child: Text("Personal", style: Theme.of(context).textTheme.labelMedium,),
             style: ButtonStyle(backgroundColor:  MaterialStateProperty.all<Color>(Theme.of(context).colorScheme.primary))), 
            ElevatedButton(onPressed: () => {}, child: Text("Sport", style: Theme.of(context).textTheme.labelMedium),
             style: ButtonStyle(backgroundColor:  MaterialStateProperty.all<Color>(Theme.of(context).colorScheme.primary))), 
            ElevatedButton(onPressed: () => {}, child: Text("Business", style: Theme.of(context).textTheme.labelMedium),
             style: ButtonStyle(backgroundColor:  MaterialStateProperty.all<Color>(Theme.of(context).colorScheme.primary)))],),
          const GoalWidget(),
        ],
      )
    );
  }
} 