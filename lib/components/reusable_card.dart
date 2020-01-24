import 'package:flutter/material.dart';

class Reusable extends StatelessWidget {
  Reusable({@required this.colout, this.cardChild,this.onPress});

  final Color colout;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colout,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}