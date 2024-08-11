class ShoppingCart {
  List<Item> items = [];

  void addItem(Item item) {
    items.add(item);
    print('${item.name} added to the shopping cart.');
  }

  void removeItem(Item item) {
    items.remove(item);
    print('${item.name} removed from the shopping cart.');
  }
  else {
  print('${Item.name} not found in the shopping cart.'); }
  }

  double getTotalPrice() {
    double total = 0;
    for (var item in items) {
     total += item.price * item.quantity;}
    return total;
  }
  void clearCart() {
    Item.clear();
    print('Shopping cart cleared.');
  }

  @override
  String toString() {
    return 'Shopping Cart: ${items.length} items, Total Price: \$${getTotalPrice().toStringAsFixed(2)}';
  }
}