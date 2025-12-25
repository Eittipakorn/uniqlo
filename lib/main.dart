import 'package:flutter/material.dart';
import 'package:uniqlo/Model/products.dart';
import 'package:uniqlo/products-detail.dart';

void main() {
  runApp(const UniqloApp());
}

class UniqloApp extends StatelessWidget {
  const UniqloApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uniqlo App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Uniqlo App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get imgLabel => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SafeArea(child: Container(
          child: ListView.builder(
            itemCount: Products.samples.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  print((Products.samples[index].imgTitle));
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ProductsDetail(products: Products.samples[index],);
                      },
                    ),
                  );
                },
                child: buildProductsCard(Products.samples[index]),
              );
            },
          
          ),
        ),
      ),
    );
  }

  Widget buildProductsCard(Products products) {
    return Card(
      elevation: 2.0,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(products.imgLabel, style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700, fontFamily: 'Palatino',)),
            Image(image: AssetImage(products.imgUrl)),
            const SizedBox(height: 14.0),
          ]
        ),
      )
    );
  }
}

