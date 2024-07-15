// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/model/Product.dart';
import 'package:flutter_application_1/pages/CheckOut.dart';
import 'package:flutter_application_1/pages/details_screen.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/provider/Cart.dart';
import 'package:flutter_application_1/shared/constants.dart';
import 'package:flutter_application_1/shared/rowAppbar.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  Home({super.key});
  List product = [
    Product(
        image: "0.png",
        prix: 5.4,
        details:
            "Le rouge à lèvre liquide Rouge Artist For Ever Matte vous propose une expérience au fini mat unique. Enrichie de 5 nouvelles teintes, la gamme se compose de 16 couleurs, conçue pour vous apporter la plus grande vivacité de couleur avec une finition lisse et mate pendant 24h, sans aucun transfert !. Enrichie de 5 nouvelles teintes, la gamme se compose de 16 couleurs, conçue pour vous apporter la plus grande vivacité de couleur avec une finition lisse et mate pendant 24h, sans aucun transfert !",
        name: "prod1"),
    Product(
        image: "1.png",
        prix: 45.4,
        details:
            "Le rouge à lèvre liquide Rouge Artist For Ever Matte vous propose une expérience au fini mat unique. Enrichie de 5 nouvelles teintes, la gamme se compose de 16 couleurs, conçue pour vous apporter la plus grande vivacité de couleur avec une finition lisse et mate pendant 24h, sans aucun transfert !. Enrichie de 5 nouvelles teintes, la gamme se compose de 16 couleurs, conçue pour vous apporter la plus grande vivacité de couleur avec une finition lisse et mate pendant 24h, sans aucun transfert !",
        name: "prod2"),
    Product(
        image: "2.png",
        prix: 71.4,
        details:
            "Le rouge à lèvre liquide Rouge Artist For Ever Matte vous propose une expérience au fini mat unique. Enrichie de 5 nouvelles teintes, la gamme se compose de 16 couleurs, conçue pour vous apporter la plus grande vivacité de couleur avec une finition lisse et mate pendant 24h, sans aucun transfert !. Enrichie de 5 nouvelles teintes, la gamme se compose de 16 couleurs, conçue pour vous apporter la plus grande vivacité de couleur avec une finition lisse et mate pendant 24h, sans aucun transfert !",
        name: "prod3"),
    Product(
        image: "3.png",
        prix: 55.4,
        details:
            "Le rouge à lèvre liquide Rouge Artist For Ever Matte vous propose une expérience au fini mat unique. Enrichie de 5 nouvelles teintes, la gamme se compose de 16 couleurs, conçue pour vous apporter la plus grande vivacité de couleur avec une finition lisse et mate pendant 24h, sans aucun transfert !. Enrichie de 5 nouvelles teintes, la gamme se compose de 16 couleurs, conçue pour vous apporter la plus grande vivacité de couleur avec une finition lisse et mate pendant 24h, sans aucun transfert !",
        name: "prod4"),
    Product(
        image: "4.png",
        prix: 35.4,
        details:
            "Le rouge à lèvre liquide Rouge Artist For Ever Matte vous propose une expérience au fini mat unique. Enrichie de 5 nouvelles teintes, la gamme se compose de 16 couleurs, conçue pour vous apporter la plus grande vivacité de couleur avec une finition lisse et mate pendant 24h, sans aucun transfert !. Enrichie de 5 nouvelles teintes, la gamme se compose de 16 couleurs, conçue pour vous apporter la plus grande vivacité de couleur avec une finition lisse et mate pendant 24h, sans aucun transfert !",
        name: "prod5"),
    Product(
        image: "5.png",
        prix: 85.4,
        details:
            "Le  mascara Artist For Ever Matte vous propose une expérience au fini mat unique. Enrichie de 5 nouvelles teintes, la gamme se compose de 16 couleurs, conçue pour vous apporter la plus grande vivacité de couleur avec une finition lisse et mate pendant 24h, sans aucun transfert !. Enrichie de 5 nouvelles teintes, la gamme se compose de 16 couleurs, conçue pour vous apporter la plus grande vivacité de couleur avec une finition lisse et mate pendant 24h, sans aucun transfert !",
        name: "prod6"),
    Product(
        image: "6.png",
        prix: 5.94,
        details:
            "Le rouge à lèvre liquide Rouge Artist For Ever Matte vous propose une expérience au fini mat unique. Enrichie de 5 nouvelles teintes, la gamme se compose de 16 couleurs, conçue pour vous apporter la plus grande vivacité de couleur avec une finition lisse et mate pendant 24h, sans aucun transfert !. Enrichie de 5 nouvelles teintes, la gamme se compose de 16 couleurs, conçue pour vous apporter la plus grande vivacité de couleur avec une finition lisse et mate pendant 24h, sans aucun transfert !",
        name: "prod7"),
    Product(
        image: "7.png",
        prix: 51.4,
        details:
            "Le rouge à lèvre liquide Rouge Artist For Ever Matte vous propose une expérience au fini mat unique. Enrichie de 5 nouvelles teintes, la gamme se compose de 16 couleurs, conçue pour vous apporter la plus grande vivacité de couleur avec une finition lisse et mate pendant 24h, sans aucun transfert !. Enrichie de 5 nouvelles teintes, la gamme se compose de 16 couleurs, conçue pour vous apporter la plus grande vivacité de couleur avec une finition lisse et mate pendant 24h, sans aucun transfert !",
        name: "prod8"),
  ];
  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<Cart>(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appbarred,
          title: Text("home"),
          centerTitle: true,
          actions: [RowAppbar()],
        ),
        drawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  UserAccountsDrawerHeader(
                    accountName: Text(""),
                    accountEmail: Text(""),
                    decoration: BoxDecoration(color: appbarred),
                  ),
                  ListTile(
                    title: Text("Home"),
                    leading: Icon(Icons.home),
                    onTap: () {Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ),
                    );},
                  ),
                  ListTile(
                    title: Text("My Products"),
                    leading: Icon(Icons.add_shopping_cart),
                    onTap: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CheckOut(),
                      ),
                    );
                    },
                  ),
                  // ListTile(
                  //   title: Text("About"),
                  //   leading: Icon(Icons.help_center),
                  //   onTap: () {},
                  // ),
                  ListTile(
                    title: Text("Logout"),
                    leading: Icon(Icons.exit_to_app),
                    onTap: () {Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ),
                    );},
                  ),
                ],
              ),
              Text("Developed by Eya Zaoui © 2024")
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(5, 20, 5, 0),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2, //width:2 and length:3
                  crossAxisSpacing: 40,
                  mainAxisSpacing: 33),
              itemCount: product.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Details(produit: product[index]),
                      ),
                    );
                  },
                  child: GridTile(
                      child: Positioned(
                        right: 0,
                        left: 0,
                        bottom: 0,
                        top: 0,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(55),
                            child: Image.asset(
                                "assets/images/${product[index].image}")),
                      ),
                      footer: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("\$ ${product[index].prix}"),
                          IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              classInstancee.add(product[index]);
                            },
                            color: Colors.blue[900],
                          )
                        ],
                      )),
                );
              }),
        ),
      ),
    );
  }
}
