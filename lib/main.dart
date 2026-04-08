import 'package:flutter/material.dart';
import 'models/student.dart';
import 'models/teacher.dart';
import 'models/classroom.dart';

void main() {
  // Tạo giáo viên
  Teacher t1 = Teacher("T01", "Mr. John", 40, "Male", "Math", 1500);
  Teacher t2 = Teacher("T02", "Ms. Anna", 35, "Female", "English", 1400);

  // Tạo học sinh
  Student s1 = Student("S01", "Alice", 16, "Female", "10A", [8, 7.5, 9]);
  Student s2 = Student("S02", "Bob", 17, "Male", "10A", [6, 7, 8]);
  Student s3 = Student("S03", "Charlie", 16, "Male", "10A", [9, 9.5, 10]);

  // Tạo lớp học
  Classroom class1 = Classroom("C01", "Class 10A");

  // Gán giáo viên
  class1.assignTeacher(t1);

  // Thêm học sinh
  class1.addStudent(s1);
  class1.addStudent(s2);
  class1.addStudent(s3);

  // Hiển thị thông tin lớp
  class1.displayClassInfo();
}
