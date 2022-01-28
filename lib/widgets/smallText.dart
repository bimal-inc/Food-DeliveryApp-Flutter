import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;
  double height;
  SmallText({
    Key? key,
    this.color = const Color(0xFFccc7c5),
    required this.text,
    this.overflow = TextOverflow.ellipsis,
    this.size = 12,
    // height add spaces between spaces in lines in the item description
    this.height = 1.2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color, fontFamily: 'Roboto', fontSize: size, height: height),
    );
  }
}
