import 'package:flutter/material.dart';

class listTileWidget extends StatelessWidget {
  String title, subTitle;
  IconData leadingIcon, trailingIcon;
  Color? listTileColor, iconColor;

  // const listTileWidget({
  //   Key? key,
  // }) : super(key: key);

  listTileWidget({
    required this.title,
    required this.subTitle,
    this.leadingIcon = Icons.label,
    this.trailingIcon = Icons.add_shopping_cart,
    this.listTileColor,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        tileColor: listTileColor,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: const BorderSide(width: 1.0, color: Colors.blue),
        ),
        title: Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        subtitle: Text(subTitle),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.mouse),
          color: Colors.blue,
        ),
        trailing: IconButton(icon: Icon(trailingIcon), onPressed: () {}),
      ),
    );
  }
}
