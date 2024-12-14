import 'package:ecom_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom freek',
        price: '234',
        imagePath: 'lib/images/air.jpeg',
        description: 'The shoe is amazing'),
    Shoe(
        name: 'Air Jordans',
        price: '234',
        imagePath: 'lib/images/air.jpeg',
        description: 'The shoe is amazing'),
    Shoe(
        name: 'Zoom freek',
        price: '234',
        imagePath: 'lib/images/air.jpeg',
        description: 'The shoe is amazing'),
    Shoe(
        name: 'Kyrie 6',
        price: '234',
        imagePath: 'lib/images/air.jpeg',
        description: 'The shoe is amazing'),
  ];
  List<Shoe> userCart = [];
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
