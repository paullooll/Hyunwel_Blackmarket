import 'package:app_dev/models/items.dart';

class Cart {
  ItemsForSale itemsForSale;
  int quantity;

  Cart({
    required this.itemsForSale,
    this.quantity = 1,
  });

  double get totalPrice{
    return (itemsForSale.price);
  }
}