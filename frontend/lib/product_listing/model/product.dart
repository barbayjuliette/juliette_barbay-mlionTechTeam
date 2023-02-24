import 'package:equatable/equatable.dart';
import 'package:intl/intl.dart';

class Product extends Equatable {
  final String name;
  final String description;
  final String photo;
  final int price;
  final int stock;

  String get formattedPrice {
    var f = NumberFormat.simpleCurrency(
      locale: 'en_Us',
      decimalDigits: 2,
    );
    return f.format(price/100);
  }

  const Product({
    required this.name,
    required this.description,
    required this.photo,
    required this.price,
    required this.stock,
  });

  @override
  List<Object> get props => [
    name,
    description,
    photo,
    price,
    stock,
  ];
}