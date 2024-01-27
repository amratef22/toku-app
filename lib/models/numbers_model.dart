class ItemModel
{
  final String jpName;
  final String enName;
  final String? image;
  final String sound;

  const ItemModel({
    required this.enName,
    required this.jpName,
     this.image,
    required this.sound,
  });
}