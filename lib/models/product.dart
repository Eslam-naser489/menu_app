import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price,id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.color,
  });

  // ignore: strict_top_level_inference
  get size => null;
}
List<Product> products = [
  Product(
      id: 1,
      title: "food",
      price: 234,
      description: "#",
      image: "assets/images/WhatsApp Image 2026-04-16 at 12.14.58 PM.jpeg",
      color: const Color(0xFF3D82AE)),
      
  Product(
    id: 2,
    title: "food",
    price: 234,
    description: "#",
    image: "assets/images/WhatsApp Image 2026-04-16 at 12.15.43 PM.jpeg",
    color: const Color(0xFFD3A984),
  ),
    Product(
    id: 3,
    title: "food",
    price: 234,
    description: "#",
    image: "assets/images/WhatsApp Image 2026-04-16 at 12.16.22 PM.jpeg",
    color: const Color(0xFF989493),
  ),
    Product(
    id: 4,
    title: "food",
    price: 234,
    description: "#",
    image: "assets/images/WhatsApp Image 2026-04-16 at 12.21.57 PM.jpeg",
    color: const Color(0xFF989493),
    ),
    Product(
    id: 5,
    title: "food",
    price: 234,
    description: "#",
    image: "assets/images/WhatsApp Image 2026-04-16 at 12.22.56 PM.jpeg",
    color: const Color(0xFF989493),
    ),
    Product(
    id: 6,
    title: "food",
    price: 234,
    description: "#",
    image: "assets/images/WhatsApp Image 2026-04-16 at 12.23.43 PM.jpeg",
    color: const Color(0xFF989493),
    ),
    Product(
    id: 7,
    title: "food",
    price: 234,
    description: "#",
    image: "assets/images/WhatsApp Image 2026-04-16 at 12.24.52 PM.jpeg",
    color: const Color(0xFF989493),
    ),
    Product(
    id: 8,
    title: "food",
    price: 234,
    description: "#",
    image: "assets/images/WhatsApp Image 2026-04-16 at 12.28.49 PM.jpeg",
    color: const Color(0xFF989493),
    ),
    Product(
    id: 9,
    title: "food",
    price: 234,
    description: "#",
    image: "assets/images/WhatsApp Image 2026-04-16 at 12.45.28 PM.jpeg",
    color: const Color(0xFF989493),
    ),
];