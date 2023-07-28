import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../data/Product.dart';

import '../../constants.dart';
import 'favIcon.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
    super.key,
    required this.product,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPaddin / 2, vertical: kDefaultPaddin / 4),
      child: GestureDetector(
        onTap: () => {press()},
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(kDefaultPaddin / 2),
                  height: 200,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: const [
                      BoxShadow(
                        color: kTextColor,
                        spreadRadius: 0.1,
                        blurRadius: 2,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 165,
                        decoration: const BoxDecoration(
                          color: Colors.green,
                        ),
                        child: Hero(
                          tag: "${product.id}",
                          child: Image.asset(product.image),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPaddin / 4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product.title,
                              style: const TextStyle(color: Colors.black),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/icons/Star.svg",
                                      color: const Color(0xFFEEA939),
                                      height: 10,
                                    ),
                                    Text(
                                      " ${product.rating}",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Text(
                                  "\$ ${product.price}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(top: 10, right: 10, child: FavIcon(product: product)),
          ],
        ),
      ),
    );
  }
}
