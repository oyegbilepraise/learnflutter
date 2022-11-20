import 'package:flutter/material.dart';
import 'package:learnflutter/screens/Details.dart';

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
      ),
      body: Center(
          child: OutlinedButton(
        style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return Details();
              },
            ),
          );
        },
        child: Text(
          'Submit'.toUpperCase(),
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      )),
    );
  }
}
