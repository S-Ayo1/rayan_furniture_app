class FurnitureItem {
  final int id;
  final String title;
  final String description;
  final int price;
  final String material;
  final String size;
  final String colour;
  final List<String> images;

  FurnitureItem({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.material,
    required this.size,
    required this.colour,
    required this.images,
  });
}

List<FurnitureItem> furnitureList = [
  FurnitureItem(
    id: 1,
    title: 'Royal Sofa',
    description: 'A comfortable 3-seater sofa.',
    price: 250000,
    material: 'Leather',
    size: '200 x 90 cm',
    colour: 'Brown',
    images: [
      'assets/images/sofa1.jpg.webp',
      'assets/images/sofa2.jpg.webp',
      'assets/images/sofa3.jpg.webp',
      'assets/images/sofa4.jpg.webp',
      'assets/images/sofa5.jpg.webp',
    ],
  ),
  FurnitureItem(
    id: 2,
    title: 'Dining Table',
    description: 'A strong 6-seater dining table.',
    price: 180000,
    material: 'Wood',
    size: '180 x 90 cm',
    colour: 'Black',
    images: ['assets/images/table1.webp'],
  ),
  FurnitureItem(
    id: 3,
    title: 'Exotic white sofa',
    description: 'An elegant 3-seater sofa.',
    price: 180000,
    material: 'Wood',
    size: '180 x 90 cm',
    colour: 'Black',
    images: [
      'assets/images/whitesof1.jpg.webp',
      'assets/images/whitesof2.jpg.webp',
      'assets/images/whitesof3.jpg.webp',
      'assets/images/whitesof4.jpg.webp',
      ],
  ),
];

List<FurnitureItem> sofaList = [
  FurnitureItem(
    id: 1,
    title: 'Executive Sofa',
    description: 'A comfortable 3-seater sofa.',
    price: 250000,
    material: 'Leather',
    size: '200 x 90 cm',
    colour: 'Brown',
    images: ['assets/images/sofaa2.jpg.webp'],
  ),
  FurnitureItem(
    id: 2,
    title: 'Premium Dining Table',
    description: 'A strong 6-seater dining table.',
    price: 180000,
    material: 'Wood',
    size: '180 x 90 cm',
    colour: 'Black',
    images: ['assets/images/dining1.jpg.webp'],
  ),
  FurnitureItem(
    id: 3,
    title: 'Luxurious elegant sofa',
    description: 'A strong 6-seater dining table.',
    price: 180000,
    material: 'Wood',
    size: '180 x 90 cm',
    colour: 'Black',
    images: [
      'assets/images/orange1.jpg.webp',
      'assets/images/orange2.jpg.webp',
      'assets/images/orange3.jpg.webp',
      'assets/images/orange4.jpg.webp',
      ],
  ),
];
