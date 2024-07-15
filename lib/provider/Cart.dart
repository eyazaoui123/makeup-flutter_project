import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/Product.dart';

class Cart with ChangeNotifier {
  List selectedProd = [];
  double price = 0.0;
  add(Product p) {
    selectedProd.add(p);
    price += p.prix;
    notifyListeners();
  }

  delete(Product p) {
    selectedProd.remove(p);
    price -= p.prix;
    notifyListeners();
  }
}
