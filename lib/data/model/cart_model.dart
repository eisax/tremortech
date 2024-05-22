class CartModel {
  CartModel(
      {required this.id,
      this.name,
      this.image,
      required this.price,
      this.oldPrice,
      required this.quantity});

  int id;
  double price;
  String? image;
  String? name;
  String? description;
  double? oldPrice;
  int quantity;
}
