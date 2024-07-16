import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget buildProductCard(String imagePath, String title, int price,
    int originalPrice, double rating) {
  return Container(
    width: 200,
    margin: const EdgeInsets.only(right: 16),
    child: Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(imagePath,
                  height: 200, width: 200, fit: BoxFit.cover),
              Positioned(
                top: 8,
                right: 8,
                child: SvgPicture.asset('assets/icons/Favourite.svg'),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Text(
                    '-25%',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('₦$price',
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    const Icon(Icons.shopping_cart, size: 20),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  '₦$originalPrice',
                  style: const TextStyle(
                    decoration: TextDecoration.lineThrough,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    ...List.generate(
                        5,
                        (index) => Icon(
                              index < rating.floor()
                                  ? Icons.star
                                  : Icons.star_border,
                              size: 16,
                              color: Colors.amber,
                            )),
                    const SizedBox(width: 4),
                    Text(rating.toString(),
                        style: const TextStyle(color: Colors.grey)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
