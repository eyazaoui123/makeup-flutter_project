import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/constants.dart';
import 'package:flutter_application_1/shared/rowAppbar.dart';
import 'package:flutter_application_1/provider/Cart.dart';
import 'package:provider/provider.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<Cart>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarred,
        title: Text(
          "Check Out",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [RowAppbar()],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              height: 500,
              child: ListView.builder(
                padding: EdgeInsets.all(8),
                itemCount: classInstancee.selectedProd.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      subtitle:
                          Text("${classInstancee.selectedProd[index].prix}"),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(
                            "assets/images/${classInstancee.selectedProd[index].image}"),
                      ),
                      title: Text(classInstancee.selectedProd[index].name),
                      trailing: IconButton(
                        onPressed: () {
                          classInstancee
                              .delete(classInstancee.selectedProd[index]);
                        },
                        icon: Icon(Icons.delete),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(BTNred),
              padding: MaterialStateProperty.all(EdgeInsets.all(12)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
            ),
            child: Text(
              "pay \$ ${classInstancee.price}",
              style: TextStyle(fontSize: 19, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
