import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/products_providers.dart';

class ProductDetailScreen extends StatelessWidget {
  // final String title;
  // final String imageUrl;

  // ProductDetailScreen(this.title,this.imageUrl);
  static const routeNamed = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final loadedProduct = Provider.of<Products>(
      context,
      listen: false,
    ).findById(productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
      body: Column(
        children: <Widget>[
          Card(
            child: Image.network(productId),
          ),
        ],
      ),
    );
  }
}
