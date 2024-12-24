import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryapp/product/card.dart';
import 'package:groceryapp/product/data.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final data = Product(
    name: 'Apel',
    description:
        'Apel adalah buah yang berasal dari pohon apel. Buah ini biasanya berwarna merah kulitnya jika masak, tetapi ada juga yang berwarna kuning atau hijau. Daging buahnya yang putih dan renyah sangat kaya akan vitamin, serat, dan antioksidan.',
    price: '15.000',
    image: 'assets/apel.png',
    quantity: '1 Kg',
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: Text(
          'TOKO BUAH & SAYUR',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
          color: Colors.black,
        ),
        actions: [
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
                color: Colors.black,
              ),
              Stack(
                children: [
                  IconButton(
                    icon: const Icon(Icons.shopping_cart),
                    onPressed: () {},
                    color: Colors.black,
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Container(
                      padding: const EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      constraints: const BoxConstraints(
                        minWidth: 12,
                        minHeight: 12,
                      ),
                      child: const Text(
                        '0',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 0.5,
            crossAxisCount: 2,
          ),
          itemCount: AllProduct.length,
          itemBuilder: (context, index) {
            return listcard(data: AllProduct[index]);
          },
        ),
      ),
    );
  }
}
