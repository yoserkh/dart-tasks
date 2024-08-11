class Item{
  late String name;
  late double price;
  late intquantity;

  Item({required this.name , required this.price , required this.intquantity});
}
 @override
  String toString() {
   return 'Item: $name, Price: \$${price.toStringAsFixed(2)}, Quantity: $quantity';
  }
  double totalPrice() {
    return price * quantity;
  }
void applyDiscount(double discountPercentage) {
  if (discountPercentage > 0 && discountPercentage <= 100) {
  price -= price * (discountPercentage / 100);
  }
  }
void updateQuantity(int newQuantity) {
  if (newQuantity >= 0) {
  quantity = newQuantity;
}
}
bool isInStock() {
 return quantity > 0;
}
