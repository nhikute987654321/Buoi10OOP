import 'person.dart';

class Student extends Person {
  String grade;
  List<double> scores;

  Student(String id, String name, int age, String gender, this.grade, this.scores)
      : super(id, name, age, gender);

  double calculateAverage() {
    if (scores.isEmpty) return 0;
    return scores.reduce((a, b) => a + b) / scores.length;
  }

  @override
  void displayInfo() {
    super.displayInfo();
    print("Grade: $grade | Scores: $scores | Avg: ${calculateAverage().toStringAsFixed(2)}");
  }
}