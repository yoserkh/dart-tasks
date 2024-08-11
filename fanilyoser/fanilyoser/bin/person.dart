class Person {
  String name;
  String contactInfo;

  Person({required this.name, required this.contactInfo});

  @override
  String toString() {
    return 'Name: $name, Contact: $contactInfo';
  }
}
void updateContactInfo(String newContactInfo) {
 contactInfo = newContactInfo;}

 bool hasValidContact() {return contactInfo.isNotEmpty;}

bool hasSameName(Person other) {
    return name.toLowerCase() == other.name.toLowerCase();
  }
