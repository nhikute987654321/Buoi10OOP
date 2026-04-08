import 'models/student.dart';
import 'models/teacher.dart';
import 'models/classroom.dart';
import 'dart:io';

void main() {
  print("=== Nhập thông tin lớp học ===");

  print("Nhập ID lớp:");
  String classId = stdin.readLineSync()!;

  print("Nhập tên lớp:");
  String className = stdin.readLineSync()!;

  Classroom classroom = Classroom(classId, className);

  // Nhập giáo viên
  print("\n=== Nhập thông tin giáo viên ===");
  Teacher teacher = inputTeacher();
  classroom.assignTeacher(teacher);

  // Nhập số lượng học sinh
  print("\nNhập số lượng học sinh:");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    print("\n--- Nhập học sinh ${i + 1} ---");
    Student student = inputStudent();
    classroom.addStudent(student);
  }

  // Hiển thị thông tin
  classroom.displayClassInfo();
}

Teacher inputTeacher() {
  print("Nhập ID giáo viên:");
  String id = stdin.readLineSync()!;

  print("Nhập tên:");
  String name = stdin.readLineSync()!;

  print("Nhập tuổi:");
  int age = int.parse(stdin.readLineSync()!);

  print("Nhập giới tính:");
  String gender = stdin.readLineSync()!;

  print("Nhập môn dạy:");
  String subject = stdin.readLineSync()!;

  print("Nhập lương:");
  double salary = double.parse(stdin.readLineSync()!);

  return Teacher(id, name, age, gender, subject, salary);
}

Student inputStudent() {
  print("Nhập ID học sinh:");
  String id = stdin.readLineSync()!;

  print("Nhập tên:");
  String name = stdin.readLineSync()!;

  print("Nhập tuổi:");
  int age = int.parse(stdin.readLineSync()!);

  print("Nhập giới tính:");
  String gender = stdin.readLineSync()!;

  print("Nhập lớp:");
  String grade = stdin.readLineSync()!;

  print("Nhập điểm (cách nhau bởi dấu cách, ví dụ: 8 7.5 9):");
  List<String> inputScores = stdin.readLineSync()!.split(" ");
  List<double> scores =
      inputScores.map((e) => double.parse(e)).toList();

  return Student(id, name, age, gender, grade, scores);
}