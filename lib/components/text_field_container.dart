import 'package:flutter/material.dart';

import 'package:sucesso_app/constants.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  final Color color;

  const TextFieldContainer({
    Key? key,
    required this.color,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadiusValue),
      ),
      child: child,
    );
  }
}
