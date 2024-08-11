class Order {
  Customer customer;
  List<Item> items;
  String status;

  Order({required this.customer, required this.items, this.status = 'Pending'});

  void processOrder() {
    status = 'Processed';
    print('Order for ${customer.name} has been processed.');
  }
void cancelOrder() {
    status = 'Cancelled';
    print('Order for ${customer.name} has been cancelled.');
  }
double getTotalPrice() {
  double total = 0;
   for (var item in items) {
      total += item.price * item.quantity;
    }
    return total;
  }


  @override
  String toString() {
    return 'Order: ${items.length} items for ${customer.name}, Status: $status';
  }
}