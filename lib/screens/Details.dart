import 'package:flutter/material.dart';
import 'package:learnflutter/screens/MyForm.dart';

class Details extends StatelessWidget {
  Details({Key? key, required this.productName, required this.subtitle}) : super(key: key);

  String productName, subtitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(productName),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Center(
          child: Container(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.account_balance_wallet_outlined),
              title: Text(productName),
              subtitle: Text(subtitle),
            )
          ],
        ),
      )),
    );
  }
}
