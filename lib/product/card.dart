import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryapp/product/data.dart';

class listcard extends StatelessWidget {
  const listcard({
    super.key,
    required this.data,
  });

  final Product data;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Hero(
            tag: data.image,
            child: SizedBox(
              width: 150,
              child: Image.asset(data.image),
            ),
          ),
          const SizedBox(
            height: 6.0,
          ),
          Text(
            data.name,
            style: GoogleFonts.poppins(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 2.0,
          ),
          Text(
            data.quantity,
            style: GoogleFonts.poppins(
              fontSize: 12.0,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 2.0,
          ),
          Text(
            'Rp. ${data.price}',
            style: GoogleFonts.poppins(
              fontSize: 16.0,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 2.0,
          ),
          const Divider(
            color: Colors.grey,
          ),
          const SizedBox(
            height: 6.0,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Icon(Icons.shopping_cart, size: 20.0, color: Colors.green),
                  Text(
                    "Beli",
                    style: TextStyle(color: Colors.green),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.remove_circle_outline,
                        size: 20.0,
                        color: Colors.green,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 5,
                        ),
                        child: Text('0'),
                      ),
                      Icon(
                        Icons.add_circle_outline,
                        size: 20.0,
                        color: Colors.green,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
