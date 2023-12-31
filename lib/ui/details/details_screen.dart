import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants.dart';
import '../../data/Product.dart';
import '../details/components/body.dart';

import '../home/components/favIcon.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({super.key ,required this.product});

  // const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kMainColor,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        FavIcon(product: product),
        const SizedBox(width: kDefaultPaddin)
      ],
    );
  }
}
