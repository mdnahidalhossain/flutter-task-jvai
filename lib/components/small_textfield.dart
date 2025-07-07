import 'package:flutter/material.dart';

class SmallTextfield extends StatelessWidget {
  const SmallTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 42,
      height: 42,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(52, 64, 84, 0.08), // shadow color
                  blurRadius: 2, // how blurry
                  spreadRadius: 2, // how much it spreads
                  offset: Offset(0, 1), // x and y offset
                ),
              ],
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          TextField(
            style: TextStyle(fontSize: 22),
            decoration: InputDecoration(border: InputBorder.none),
          ),
        ],
      ),
    );
  }
}
