import 'package:flutter/material.dart';

buildCard() => Container(
      height: 120,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(10.0),
        ),
        gradient: LinearGradient(colors: [
          Colors.grey,
          Colors.grey.withOpacity(0.5),
          Colors.grey,
        ],),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Blah"),
                ElevatedButton(onPressed: () {}, child: Text("Join"))
              ],
            ),
          )
        ],
      ),
    );
