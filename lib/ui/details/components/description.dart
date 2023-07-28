import 'package:flutter/material.dart';
import '../../../data/Product.dart';
import '../../constants.dart';

class Description extends StatelessWidget {
  // const Description({
  //   Key key,
  //   @required this.product,
  // }) : super(key: key);

  final Product product;

  const Description({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "About",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Colors.black,
              ),
            )),
        const SizedBox(height: kDefaultPaddin / 5),
        Text(
          product.description,
          style: const TextStyle(height: 1.5),
        ),
      ],
    );
  }
}
