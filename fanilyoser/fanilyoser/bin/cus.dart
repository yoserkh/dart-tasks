class Customer extends Person {
  String? address;
  String? ShoppingCart ;

  Customer({
    required String name,
    required String contactInfo,
    required this.address,
  })  : cart = ShoppingCart(),
    super(name: name, contactInfo: contactInfo);

  @override
  String toString() {
    return '${super.toString()}, Address: ${address.toString()}';
  }
}
void updateAddress(Address newAddress) {
 address = newAddress;
  print('Address for $name has been updated.');}

void clearCart() {
  cart.clearCart();
  print('$name\'s shopping cart has been cleared.');}
double getCartTotalPrice() {
  return cart.getTotalPrice();
  }
void addItemToCart(Item item) {
 cart.addItem(item);
  print('${item.name} added to $name\'s shopping cart.');
  }
void removeItemFromCart(Item item) {
cart.removeItem(item);
  print('${item.name} removed from $name\'s shopping cart.');}



