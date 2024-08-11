import 'dart:js_interop';
class Boutique{
  late String name;
  late String address;
  late String contactInfo;
  late String openingHours;
  late List<Customer> customers = [];
  late List<Employee> employees = [];
  late List <Item> items = [];

  Boutique({required this.name , required this.address , required this.contactInfo , required this.openingHours})
  void addCustomer(addCustomer){
  customers.add(customers);
  print('${customer.toString()} added to the boutique.')};

  void addEmployee(Employee E1){
   E1.add(Employee);
   print('${employee.toString()} added to the boutique.');
  }
  void addItem(Item item) {
    items.add(item);
    print('${item.toString()} added to the boutique inventory.');
  }
}
 void placeOrder(Order order) {
    orders.add(order);
    print('Order placed by ${order.customer.name}');
  }

  void displayDetails() {
    print('Boutique: $name');
    print('Address: ${address.toString()}');
    print('Contact: $contactInfo');
    print('Opening Hours: $openingHours');
    print('\nEmployees:');
    for (var employee in employees) {
      print(employee.toString());
    }
    print('\nCustomers:');
    for (var customer in customers) {
      print(customer.toString());
    }
    print('\nItems:');
    for (var item in items) {
      print(item.toString());
    }
    print('\nOrders:');
    for (var order in orders) {
      print(order.toString());
    }
  }