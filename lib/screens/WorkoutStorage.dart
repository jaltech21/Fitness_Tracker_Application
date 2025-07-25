import 'package:shared_preferences/shared_preferences.dart';
import 'package:intl/intl.dart';

class WorkoutStorage {
  static const _completedWorkoutsKey = 'completed_workouts';

  static Future<void> saveCompletedWorkout(
    String workoutName,
    int duration,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    final now = DateTime.now();
    final formattedDate = DateFormat('yyyy-MM-dd HH:mm').format(now);
    final entry = '$formattedDate|$workoutName|$duration';

    final completed = prefs.getStringList(_completedWorkoutsKey) ?? [];
    completed.add(entry);
    await prefs.setStringList(_completedWorkoutsKey, completed);
  }

  static Future<List<Map<String, dynamic>>> getCompletedWorkouts() async {
    final prefs = await SharedPreferences.getInstance();
    final completed = prefs.getStringList(_completedWorkoutsKey) ?? [];

    return completed.map((entry) {
      final parts = entry.split('|');
      return {
        'date': parts[0],
        'name': parts[1],
        'duration': int.parse(parts[2]),
      };
    }).toList();
  }
}
