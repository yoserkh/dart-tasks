class Address {
  String street;
  String city;
  String state;
Address({
  required this.street,
  required this.city,
  required this.state
  });

@override
 String toString() {
  return '$street, $city, $state ';}
}
// Function to update the address details
void updateAddress({
  String? newStreet,
  String? newCity,
  String? newState,
    
 {
  if (newStreet != null) street = newStreet;
  if (newCity != null) city = newCity;
  if (newState != null) state = newState;
  print('Address has been updated to: $this');}

  // Function to get a formatted address string
  String getFormattedAddress() {
    return '$street\n$city, $state';
  }
  // Function to compare two addresses
bool isEqualTo(Address other) {
  return street == other.street &&
  city == other.city &&
  state == other.state;
  }