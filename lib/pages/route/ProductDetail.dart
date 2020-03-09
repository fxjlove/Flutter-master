import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  var arguments;

  ProductDetailPage({Key key, this.arguments}) : super(key: key);

  _ProductDetailPageState createState() =>
      _ProductDetailPageState(arguments: this.arguments);
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  final Map arguments;

  _ProductDetailPageState({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('商品详情'),
      ),
      body: Container(
        child: Text("pid=${arguments['pid']}"),
      ),
    );
  }
}
