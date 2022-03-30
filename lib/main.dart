import 'package:flutter/material.dart';
import 'package:sucesso_app/pages/home_page.dart';

void main() {
  runApp(
    const SucessoApp(),
  );
}

class SucessoApp extends StatelessWidget {
  const SucessoApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}
