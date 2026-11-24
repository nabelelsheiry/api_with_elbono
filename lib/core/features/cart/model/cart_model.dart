class CartModel {
  final String image;
  final String name;
  final String description;
  int quantity;

  CartModel({
    required this.image,
    required this.name,
    required this.description,
    this.quantity = 1,
  });
}