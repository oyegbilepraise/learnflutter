import 'package:flutter/material.dart';
import 'package:learnflutter/screens/Details.dart';

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _productNameController = TextEditingController();
  final _productController = TextEditingController();
  bool? _checkBox, _listCheckBox = false;

  @override
  void dispose() {
    _productController.dispose();
    _productNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            TextField(
              controller: _productController,
              decoration: const InputDecoration(
                labelText: 'Product Name',
                prefixIcon: Icon(
                  Icons.verified_user_outlined,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextField(
              controller: _productNameController,
              decoration: const InputDecoration(
                labelText: 'Product subtitle',
                prefixIcon: Icon(
                  Icons.verified_user_outlined,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Checkbox(
              value: _checkBox,
              onChanged: (val) {
                setState(() {
                  _checkBox = val;
                });
              },
            ),
            CheckboxListTile(
              value: _listCheckBox,
              title: const Text('Top Product'),
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (val) {
                setState(() {
                  _listCheckBox = val;
                });
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            myBtn(context)
          ],
        ),
      ),
    );
  }

  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(200, 50),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return Details(
                productName: _productController.text,
                subtitle: _productNameController.text,
              );
            },
          ),
        );
      },
      child: Text(
        'Submit'.toUpperCase(),
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}

// class myBtn extends StatelessWidget {
//   const myBtn({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }
