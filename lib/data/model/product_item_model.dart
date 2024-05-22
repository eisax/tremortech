
class CatalogItem {
  CatalogItem(
      {required this.id,
      this.blurHash,
      this.description,
      this.name,
      this.altDescription,
      this.categories,
      this.likes,
      this.url,
      this.image,
      this.price,
      this.oldPrice});

  int id;
  double? price;
  String? image;
  String? name;
  String? blurHash;
  String? description;
  String? altDescription;
  String? url;
  List<String>? categories;
  int? likes;
  bool? likedByUser;
  double? oldPrice;
}
