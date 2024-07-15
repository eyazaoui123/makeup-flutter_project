import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/CheckOut.dart';
import 'package:flutter_application_1/provider/Cart.dart';
import 'package:provider/provider.dart';

class RowAppbar extends StatelessWidget {
  const RowAppbar({super.key});

  @override
  Widget build(BuildContext context) {
          final classInstancee = Provider.of<Cart>(context);

    return Row(
              children: [
                 Stack(
                    children: [
                      Container(
                          child: Text("${classInstancee.selectedProd.length}"),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(211, 164, 255, 193),
                              shape: BoxShape.circle)),
                      Padding(
                        padding: const EdgeInsets.only(right: 11),
                        child: IconButton(
                            onPressed: () {
                              Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CheckOut(),
                      ),
                    );
                            },
                            icon: Icon(
                              Icons.add_shopping_cart,
                              color: Colors.white,
                            )),
                      ),
                    ],
                  ),
                
                Text(
                  "\$ ${classInstancee.price.round()}",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            );
  }
}