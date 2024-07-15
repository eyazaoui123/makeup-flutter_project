// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/model/Product.dart';
import 'package:flutter_application_1/shared/constants.dart';
import 'package:flutter_application_1/shared/rowAppbar.dart';
import 'package:provider/provider.dart';

class Details extends StatefulWidget {
  final Product produit;
  Details({required this.produit});
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool isShowMore = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarred,
        title: Text(
          "details screen",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [RowAppbar()],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/${widget.produit.image}",
              height: 350,
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              "${widget.produit.prix}",
              style: TextStyle(fontSize: 20),
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  size: 23,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star,
                  size: 23,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star,
                  size: 23,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star,
                  size: 23,
                  color: Colors.amber,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.edit_location,
                  size: 23,
                  color: Colors.grey[700],
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  "sephora",
                  style: TextStyle(fontSize: 19),
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
                width: double.infinity,
                child: Text(
                  "Details:",
                  style: TextStyle(fontSize: 22),
                  textAlign: TextAlign.start,
                )),
            Text(
              widget.produit.details,
              style: TextStyle(fontSize: 18),
              maxLines: isShowMore ? 3 : null,
              overflow: TextOverflow.fade,
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    isShowMore = !isShowMore;
                  });
                },
                child: Text(
                  isShowMore ? "show more" : "show less ",
                  style: TextStyle(color: Colors.blue, fontSize: 18),
                ))
          ],
        ),
      ),
    );
  }
}
