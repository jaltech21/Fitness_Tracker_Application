import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'Countdown_screen.dart';

void main() {
  runApp(const WorkOutScreen()); // This starts your app
}

class WorkOutScreen extends StatelessWidget {
  const WorkOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.white,
          ),
          title: Text(
            "Fitness Tracker Pro",
            style: Theme.of(context).primaryTextTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: WorkOutList(),
      ),
    );
  }
}

class WorkOutList extends StatefulWidget {
  @override
  _WorkOutListState createState() => _WorkOutListState();
}

class _WorkOutListState extends State<WorkOutList> {
  final List<WorkoutItem> workouts = [
    WorkoutItem(
      name: "Push ups",
      animationAsset: 'assets/animations/pushups.json',
      duration: 30,
    ),
    WorkoutItem(
      name: "Squats",
      animationAsset: 'assets/animations/squat.json',
      duration: 45,
    ),
    WorkoutItem(
      name: "Jumping Jacks",
      animationAsset: 'assets/animations/jumping_jack.json',
      duration: 30,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: workouts.length,
      itemBuilder: (context, index) {
        return WorkoutCard(workout: workouts[index]);
      },
    );
  }
}

class WorkoutCard extends StatelessWidget {
  final WorkoutItem workout;

  const WorkoutCard({super.key, required this.workout});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              workout.name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          Container(
            height: 200,
            child: Lottie.asset(
              workout.animationAsset,
              repeat: true,
              animate: true,
            ),
          ),

          Padding(
            padding: EdgeInsets.only(bottom: 16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CountdownScreen(workout: workout),
                  ),
                );
              },
              child: Text('Start ${workout.name}'),
            ),
          ),
        ],
      ),
    );
  }
}

class WorkoutItem {
  final String name;
  final String animationAsset;
  final int duration;

  WorkoutItem({
    required this.name,
    required this.animationAsset,
    required this.duration,
  });
}
