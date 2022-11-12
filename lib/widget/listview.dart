import 'package:flutter/material.dart';

class listTileWidget extends StatelessWidget {
  const listTileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        tileColor: Colors.black12,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: const BorderSide(width: 1.0, color: Colors.blue),
        ),
        title: const Text(
          'Mouse',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        subtitle: const Text('Praise Tech'),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.mouse),
          color: Colors.blue,
        ),
        trailing: IconButton(
            icon: const Icon(Icons.add_shopping_cart),
            onPressed: () {}),
      ),
    );
  }
}
