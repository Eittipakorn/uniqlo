import 'package:flutter/material.dart';
import 'package:uniqlo/Model/products.dart';

class ProductsDetail extends StatefulWidget {
  final Products products;
  ProductsDetail({super.key, required this.products});

  @override
  State<StatefulWidget> createState() {
    return ProductsDetailState();
  }
}

class ProductsDetailState extends State<ProductsDetail> {
  int quantity = 1;

  void _incrementCounter() {
    setState(() {
      if (quantity < 10) {
        quantity++;
      }
    });
  }

  void _decrementCounter() {
    setState(() {
      if (quantity > 1) {
        quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final adjustedPrice = widget.products.price * quantity;

    return Scaffold(
      appBar: AppBar(title: const Text('Products Detail')),
      body: Column(
        children: [
          Image.asset(widget.products.imgUrl),
          const SizedBox(height: 20),
          Text(
            widget.products.imgLabel,
            style: const TextStyle(
                fontSize: 24,
                fontFamily: 'Athiti',
                fontWeight: FontWeight.bold),
          ),
          Text(
            widget.products.imgDesc,
            style: const TextStyle(fontSize: 16),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Text(
                  'Price: ${widget.products.price} ฿',
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                Text(
                  'Total: $adjustedPrice ฿',
                  style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                  icon: const Icon(Icons.remove, color: Colors.red),
                  onPressed: _decrementCounter,
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  '$quantity',
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                  icon: const Icon(Icons.add, color: Colors.green),
                  onPressed: _incrementCounter,
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),
          const Text("Select Quantity"),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
