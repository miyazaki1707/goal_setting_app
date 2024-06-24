import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:goal_setting_app/presentation/screens/create_goal.dart';
import '../widgets/widgets.dart';

var categories = [
  "All",
  "Personal",
  "Sport",
  "Business"
];


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
      floatingActionButton: FloatingActionButton(onPressed: () => {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const CreateGoalScreen()),
        ),
      }, backgroundColor: Theme.of(context).primaryColor , 
        shape: const CircleBorder(), child: const Icon(Icons.add, weight: 100, size: 35.0, color: Colors.white,),),
      // bottomNavigationBar: BottomNavigationBar(items: [
      //   BottomNavigationBarItem(icon: SvgPicture.asset('assets/images/goals_icon.svg'), label: 'Goals' ),
      //   const BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Ongoing' ), 
      //   const BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
      // ],),
      body:  Column(
        children: [
          Padding(
            padding:const EdgeInsets.fromLTRB(10, 10, 0, 15),
            child: SizedBox(
              height: 40,
              child: ListView.builder(
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 13),
                    child: ElevatedButton(onPressed: () => {},
                                   style: ButtonStyle(backgroundColor:  MaterialStateProperty.all<Color>(Theme.of(context).colorScheme.primary), 
                                   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ))), 
                                   child: Text(categories[index], style: Theme.of(context).textTheme.labelMedium),),
                  ); 
                },
                scrollDirection: Axis.horizontal,
                        ),),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 19, top: 10),
            child: GoalWidget(),
          ),
        ],
      )
    );
  }
} 