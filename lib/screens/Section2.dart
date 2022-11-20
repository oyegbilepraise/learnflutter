import 'package:flutter/material.dart';

class Ctstateless extends StatelessWidget {
  const Ctstateless({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CtStateFul();
  }
}

class CtStateFul extends StatefulWidget {
  const CtStateFul({Key? key}) : super(key: key);

  @override
  State<CtStateFul> createState() => _CtStateFulState();
}

class _CtStateFulState extends State<CtStateFul> {
  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text('Section 2'),
        actions: const [Icon(Icons.shopping_cart)],
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Nike Shoes'),
            trailing: IconButton(
                onPressed: () {
                  setState(() {
                    liked = !liked;
                  });
                },
                icon: liked
                    ? (const Icon(Icons.favorite))
                    : (const Icon(Icons.favorite_border))),
          ),
        ],
      ),
    );
  }
}
