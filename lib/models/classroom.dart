import 'student.dart';
import 'teacher.dart';

class Classroom {
  String id;
  String name;
  List<Student> students = [];
  Teacher? teacher;

  Classroom(this.id, this.name);

  void addStudent(Student student) {
    students.add(student);
  }

  void assignTeacher(Teacher teacher) {
    this.teacher = teacher;
  }

  void displayClassInfo() {
    print("\n===== Classroom: $name =====");
    print("ID: $id");

    if (teacher != null) {
      print("\nTeacher:");
      teacher!.displayInfo();
    } else {
      print("No teacher assigned.");
    }

    print("\nStudents:");
    if (students.isEmpty) {
      print("No students in class.");
    } else {
      for (var student in students) {
        student.displayInfo();
        print("----------------------");
      }
    }
  }
}