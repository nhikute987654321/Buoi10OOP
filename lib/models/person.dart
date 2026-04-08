class Person {
  String id;
  String name;
  int age;
  String gender;

  Person(this.id, this.name, this.age, this.gender);

  void displayInfo() {
    print("ID: $id | Name: $name | Age: $age | Gender: $gender");
  }
}