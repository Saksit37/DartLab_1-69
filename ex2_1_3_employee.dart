class Employee {
  String name;

  Employee(this.name);

  double calculateSalary() {
    return 0.0;
  }
}
//Fulltime
class FullTimeEmployee extends Employee {
  double salary;

  FullTimeEmployee(String name, this.salary) : super(name);

  @override
  double calculateSalary() {
    return salary;
  }
}
//PartTime
class PartTimeEmployee extends Employee {
  double hourly;
  int hoursworked;

  PartTimeEmployee(String name, this.hourly, this.hoursworked) : super(name);

  @override
  double calculateSalary() {
    return hourly * hoursworked;
  }
}

void main() {
  List<Employee> employees = [
    FullTimeEmployee("เปีย", 21000),
    PartTimeEmployee("กวาง", 40, 260),
    FullTimeEmployee("เนย", 21099),
    PartTimeEmployee("โต๋", 40, 200),
  ];
  

  print("\n======รายชื่อพนักงานและเงินเดือน======");
  for (var employee in employees) {
    print("ชื่อ : ${employee.name} ได้รับเงินเดือน : ${employee.calculateSalary()} บาท");
  }
}
