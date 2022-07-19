import 'package:flutter/material.dart';
import 'package:state_management_api_1/models/product_model.dart';

class ProductSktach extends StatelessWidget {
  const ProductSktach(this.product, {Key? key}) : super(key: key);
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.yellow,
        child: Column(
          children: [
            Text(
              product.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Image.network(product.thumbnailUrl, fit: BoxFit.contain),
            SizedBox(
              height: 15,
            ),
            Image.network(
              product.url,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
