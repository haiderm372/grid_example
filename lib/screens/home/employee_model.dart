class Employee {
  int id;
  String name;
  String designation;

  Employee({
    required this.id,
    required this.name,
    required this.designation,
  });
}

List<Employee> employeesList = [
  Employee(
    id: 1,
    name: 'James',
    designation: 'Project Lead',
  ),
  Employee(
    id: 2,
    name: 'Kathryn',
    designation: 'Manager',
  ),
  Employee(
    id: 3,
    name: 'Michael',
    designation: 'Designer',
  ),
  Employee(
    id: 4,
    name: 'Martin',
    designation: 'Developer',
  ),
];
