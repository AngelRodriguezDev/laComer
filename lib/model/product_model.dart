import 'package:flutter/material.dart';

class ProductModel {
  String name;
  AssetImage image;
  double price;
  String measurement;

  ProductModel(
    this.name,
    this.image,
    this.price,
    this.measurement,
  );
}
