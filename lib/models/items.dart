class ItemsForSale{
  final String name;
  final String description;
  final String description2;
  final String imagePath;
  final double price;
  final Categories category;

  ItemsForSale({
    required this.name,
    required this.description,
    required this.description2,
    required this.imagePath,
    required this.price,
    required this.category,
  });
}

enum Categories{
  pistols,
  rifles,
  shotguns,
  smg,
  snipers,
}

