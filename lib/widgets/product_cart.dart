import 'package:flutter/material.dart';
import 'package:shamo/models/product_model.dart';
import 'package:shamo/theme.dart';

import '../pages/product_page.dart';

class ProductCart extends StatelessWidget {
  final ProductModel product;
  ProductCart(this.product);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductPage(
              product,
            ),
          ),
        );
      },
      child: Container(
        width: 215,
        height: 278,
        margin: EdgeInsets.only(
          right: defaultMargin,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xffffECEDEF),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            product.galleries!.isEmpty
                ? Image.asset(
                    'assets/image_shoes.png',
                    width: 215,
                    height: 150,
                    fit: BoxFit.cover,
                  )
                : Image.network(
                    product.galleries![0].url,
                    width: 215,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.category!.name,
                    style: secondaryTextStye.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    product.name ?? 'Nama produk',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    '\$${product.price}',
                    style: priceTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
