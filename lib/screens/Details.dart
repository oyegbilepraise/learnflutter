import 'package:flutter/material.dart';
import 'package:learnflutter/screens/MyForm.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: OutlinedButton(
          child: const Text('Go Back'),
          onPressed: () {},
        ),
      ),
    );
  }
}
