
class Person{
  String? firstName;
  String? LastName;
  Person({this.firstName , this.LastName});
  Person.withNames(this.firstName, this.LastName);
  Person.requireNames(this.firstName, this.LastName);

  Person.defaultNames(){
    print("fistName: yoser , LastName: khasawenh")
  }
  String getfirstName(){
    return firstName;
  }
  String getLastName(){
    return LastName;
  }

}
class Employee extends Person{
  int? EmployeeId;
  Employee({super.firstName , super.LastName ,this.EmployeeId});
  Employee.withNames(super.firstName , super.LastName , this.EmployeeId);
  Employee.requireNames(super.firstName, super.LastName , this.EmployeeId);

  Employee.defaultNames():super.defaultNames() , this.EmployeeId = 0;

  String getLastName(){
    return LastName;
  }
  int getEmployeeId(){
    return Employee("yoser");

  }
class HrEmployee extends Employee{
  double? salary;
  HrEmployee({super.firstName , super.LastName , super.EmployeeId , this.salary});
  HrEmployee.withNames(super.firstName, super.LastName, super.EmployeeId, this.salary);

  HrEmployee.requiredNames(super.firstName, super.LastName,super.EmployeeId, this.salary);

  HrEmployee.defaultName(): super.defaultName(),
        this.salary = 0.0;

  String getLastName() {
    return "${super.getLastName()} (HR)";
  }

  double getSalary() {
    return salary ?? 0.0;
  }
}

}

void main(){
  Person P1=Person();
  Person P2=Person.withNames("yoser", "kh");
  Person P3=Person.requireNames("ahmad" , "mohmad");
  Person P4=Person.defaultNames();


  Employee E1=Employee();
  Employee E2=Employee.withNames("yoser" ,"ahmad" ,149787);
  Employee E3=Employee.requireNames("zaina", "mohmad",14987);
  Employee E4=Employee.defaultNames();

}
