import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sucesso_app/components/rounded_button.dart';
import 'package:sucesso_app/pages/login_page.dart';
import 'package:sucesso_app/pages/register_page.dart';
import 'package:sucesso_app/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      backgroundColor: kSecundaryColor,
      body: _buildBody(),
    );
  }

  // WIDGETS

  Column _buildBody() {
    // BODY
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        const ImageIcon(
          // LOGO
          AssetImage('assets/images/logo.png'),
          size: 256,
          color: kPrimaryColor,
        ),
        RoundedButton(
          // LOGIN BUTTON
          text: 'LOGIN',
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ),
            );
          },
          color: kThirdColor,
          textColor: kPrimaryColor,
        ),
        RoundedButton(
          // REGISTER BUTTON
          text: 'REGISTER',
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const RegisterPage(),
              ),
            );
          },
          color: kPrimaryColor,
          textColor: kThirdColor,
        ),
      ],
    );
  }

  AppBar _buildAppBar() {
    // APPBAR
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      iconTheme: const IconThemeData(color: kThirdColor),
      leading: const Padding(
        padding: EdgeInsets.all(12.0),
      ),
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    );
  }
}
