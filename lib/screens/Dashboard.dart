import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dashboard'.toUpperCase()),
        ),
        body: Container(
          width: 350.0,
          height: 250.0,
          padding: const EdgeInsets.all(20.0),
          margin: const EdgeInsets.all(50.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            border: Border.all(color: Colors.grey, width: 6.0),
            shape: BoxShape.circle,
            image: const DecorationImage(
                image: AssetImage('images/illustration.png')),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade900,
                blurRadius: 7,
                spreadRadius: 5,
                offset: const Offset(4, 4),
              )
            ],
          ),
        )
        // Center(
        //   child: IconButton(
        //     onPressed: () {},
        //     icon: const Icon(FontAwesomeIcons.addressBook),
        //     iconSize: 100,
        //     color: Colors.blue,
        //     splashColor: Colors.white,
        //     highlightColor: Colors.red,
        //   ),
        // )
        // const Image(image: AssetImage('images/illustration.png'));
        // Center(
        //   child: Text('Random value id: ${getNumber()}')
        // ),
        );
  }
}

// int getNumber() => Random().nextInt(100);
