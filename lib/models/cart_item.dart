class CartItem {
  final String name;
  final String description;
  final double price;
  final String image;
  int quantity;

  CartItem({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    this.quantity = 1,
  });
}
