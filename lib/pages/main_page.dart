import 'package:flutter/material.dart';
import 'package:sucesso_app/components/constants.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      backgroundColor: kSecundaryColor,
    );
  }

  AppBar _buildAppBar() {
    // APPBAR
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      title: const Text(
        'Booking',
        style: TextStyle(
          color: kThirdColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
