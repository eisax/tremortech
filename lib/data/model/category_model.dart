class CategoryModel {
  final int id;
  final String name;
  final String description;
  final String? image;

  CategoryModel( {
    this.image,
    required this.id,
    required this.name,
    required this.description,
  });
}