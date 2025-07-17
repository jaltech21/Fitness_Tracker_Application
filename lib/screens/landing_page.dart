import 'package:flutter/material.dart';
import 'Work_Out_Screen.dart';

void main() {
  runApp(const FitnessLandingPage()); // This starts your app
}

// Main landing page widget for the fitness tracker
class FitnessLandingPage extends StatelessWidget {
  const FitnessLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Fitness Tracker Pro",
            style: Theme.of(context).primaryTextTheme.titleLarge?.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
            ),
            textAlign: TextAlign.center,
          ),
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
            tooltip: 'Navigation Menu',
            color: Colors.white,
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {},
              color: Colors.white,
            ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/gym_bg.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.7),
                BlendMode.darken,
              ),
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(color: null),
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "JalTech Fitness Tracker",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                //SizedBox(height: 5.0),
                DecoratedBox(
                  decoration: BoxDecoration(color: null),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.0,
                      vertical: 5.0,
                    ),
                    child: Text(
                      "Who feels it knows it! Push past your limits",
                      style: TextStyle(fontSize: 23.0, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                ElevatedButton.icon(
                  onPressed: () {
                    // Start workout functionality
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WorkOutScreen()),
                    );
                  },
                  icon: Icon(Icons.fitness_center, size: 20),
                  label: Text('Get Started', style: TextStyle(fontSize: 20)),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    // return Scaffold(
    //       // App Bar with title and settings icon
    //       appBar: AppBar(
    //         title: const Text('FitTrack Pro'),
    //         actions: [
    //           IconButton(
    //             icon: const Icon(Icons.settings),
    //             onPressed: () {
    //               // Will add navigation later
    //               ScaffoldMessenger.of(context).showSnackBar(
    //                 const SnackBar(content: Text('Settings coming soon!'))
    //               );
    //           },
    //           ),
    //         ],
    //       ),

    //       // Main content area with padding
    //       body: Padding(
    //         padding: const EdgeInsets.all(16.0),  // Uniform 16px padding
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.stretch,  // Stretch children horizontally
    //           children: [
    //             // Activity Summary Section
    //             _buildActivitySummary(),

    //             const SizedBox(height: 20),  // Vertical spacing

    //             // Quick Actions Section
    //             _buildQuickActions(context),

    //             const SizedBox(height: 20),

    //             // Recent Workouts Section
    //             _buildRecentWorkouts(),
    //           ],
    //         ),
    //       ),
    //     );
    //   }

    //   // Activity Summary Widget
    //   Widget _buildActivitySummary() {
    //     return Container(
    //       padding: const EdgeInsets.all(20),
    //       decoration: BoxDecoration(
    //         color: Colors.blue.shade100,  // Light blue background
    //         borderRadius: BorderRadius.circular(12),  // Rounded corners
    //       ),
    //       child: Column(
    //         children: [
    //           const Text(
    //             'Today\'s Activity',
    //             style: TextStyle(
    //               fontSize: 24,
    //               fontWeight: FontWeight.bold,
    //             ),
    //           ),
    //           const SizedBox(height: 10),  // Spacing between title and metrics
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceAround,
    //             children: [
    //               _buildMetricCard('Steps', '8,542', Icons.directions_walk),
    //               _buildMetricCard('Calories', '420', Icons.local_fire_department),
    //             ],
    //           ),
    //         ],
    //       ),
    //     );
    //   }

    //   // Reusable Metric Card Widget
    //   Widget _buildMetricCard(String title, String value, IconData icon) {
    //     return Column(
    //       children: [
    //         Icon(icon, size: 30, color: Colors.blue.shade800),  // Metric icon
    //         const SizedBox(height: 5),  // Small spacing
    //         Text(title, style: const TextStyle(fontSize: 14)),  // Metric title
    //         Text(  // Metric value
    //           value,
    //           style: const TextStyle(
    //             fontSize: 18,
    //             fontWeight: FontWeight.bold,
    //           ),
    //         ),
    //       ],
    //     );
    //   }

    //   // Quick Actions Section
    //   Widget _buildQuickActions(BuildContext context) {
    //     return Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         const Text(
    //           'Quick Start',
    //           style: TextStyle(
    //             fontSize: 18,
    //             fontWeight: FontWeight.bold,
    //           ),
    //         ),
    //         const SizedBox(height: 10),
    //         Row(
    //           children: [
    //             Expanded(  // Makes buttons take equal width
    //               child: _buildActionButton(
    //                 context,
    //                 'Start Workout',
    //                 Icons.fitness_center,
    //                 Colors.blue,
    //               ),
    //             ),
    //             const SizedBox(width: 10),  // Horizontal spacing
    //             Expanded(
    //               child: _buildActionButton(
    //                 context,
    //                 'Log Food',
    //                 Icons.restaurant,
    //                 Colors.green,
    //               ),
    //             ),
    //           ],
    //         ),
    //       ],
    //     );
    //   }

    //   // Reusable Action Button Widget
    //   Widget _buildActionButton(
    //     BuildContext context,
    //     String text,
    //     IconData icon,
    //     Color color
    //   ) {
    //     return ElevatedButton.icon(
    //       style: ElevatedButton.styleFrom(
    //         backgroundColor: color,  // Button color
    //         foregroundColor: Colors.white,  // Text/icon color
    //         padding: const EdgeInsets.symmetric(vertical: 15),  // Button height
    //       onPressed: () {
    //         // Button press handler would go here
    //       },
    //       icon: Icon(icon),
    //       label: Text(text),
    //     );
    //   }

    //   // Recent Workouts Section
    //   Widget _buildRecentWorkouts() {
    //     return Expanded(  // Takes remaining vertical space
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           const Text(
    //             'Recent Workouts',
    //             style: TextStyle(
    //               fontSize: 18,
    //               fontWeight: FontWeight.bold,
    //             ),
    //           ),
    //           const SizedBox(height: 10),
    //           Expanded(
    //             child: ListView(  // Scrollable list
    //               children: const [
    //                 WorkoutTile(
    //                   title: 'Morning Run',
    //                   duration: '30 min',
    //                   date: 'Today',
    //                 ),
    //                 WorkoutTile(
    //                   title: 'Weight Training',
    //                   duration: '45 min',
    //                   date: 'Yesterday',
    //                 ),
    //                 WorkoutTile(
    //                   title: 'Yoga Session',
    //                   duration: '60 min',
    //                   date: '2 days ago',
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ],
    //       ),
    //     );
    //   }
    // }

    // // Separate widget for workout list items
    // class WorkoutTile extends StatelessWidget {
    //   final String title;
    //   final String duration;
    //   final String date;

    //   const WorkoutTile({
    //     super.key,
    //     required this.title,
    //     required this.duration,
    //     required this.date,
    //   });

    //   @override
    //   Widget build(BuildContext context) {
    //     return Card(
    //       child: ListTile(
    //         leading: const Icon(Icons.fitness_center, size: 40),
    //         title: Text(title),
    //         subtitle: Text(duration),
    //         trailing: Text(date),
    //         onTap: () {
    //           // Handle tap on workout item
    //         },
    //       ),
    //     );
  }
}
