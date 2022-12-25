import 'package:flutter/material.dart';
import '../screens/MyForm.dart';

enum ProductTypeEnum { Downloadable, Deliverable }

class MyRadioButton extends StatelessWidget {
  MyRadioButton(
      {Key? key,
      required this.title,
      required this.value,
      required this.selectedProductType,
      required this.onChanged})
      : super(key: key);

  String title;
  ProductTypeEnum value;
  ProductTypeEnum selectedProductType;
  Function(ProductTypeEnum?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RadioListTile(
        title: Text(ProductTypeEnum.Deliverable.name),
        value: ProductTypeEnum.Deliverable,
        dense: true,
        tileColor: Colors.blue.shade100,
        contentPadding: EdgeInsets.all(0.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        groupValue: selectedProductType,
        onChanged: onChanged,
      ),
    );
  }
}
