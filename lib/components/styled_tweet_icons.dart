import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StyledTweetIcon extends StatelessWidget {
  final Icon icon;
  final int number;
  const StyledTweetIcon({Key? key, required this.icon, required this.number})
      : super(key: key);

  String convertNumbertoK(int number) {
    if (number == 0) {
      return '';
    } else if (number >= 10000 && number % 1000 == 0) {
      return '${(number ~/ 1000)}k';
    } else if (number >= 10000 && number % 10000 == 0) {
      return '${(number / 1000)}k';
    } else {
      return '$number';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        //alignment between the icon and the number
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: Container(
              margin: EdgeInsets.only(right: 5.0),
              child: icon,
            ),
          ),
          Flexible(
            child: Container(
                margin: EdgeInsets.only(right: 5),
                child: Text(convertNumbertoK(number))),
          )
        ],
      ),
    );
  }
}
