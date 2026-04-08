import 'person.dart';

class Teacher extends Person {
  String subject;
  double salary;

  Teacher(String id, String name, int age, String gender, this.subject, this.salary)
      : super(id, name, age, gender);

  @override
  void displayInfo() {
    super.displayInfo();
    print("Subject: $subject | Salary: $salary");
  }
}