import 'package:flutter/material.dart';
import 'package:sucesso_app/components/rounded_button.dart';
import 'package:sucesso_app/components/text_field_container.dart';
import 'package:sucesso_app/components/constants.dart';
import 'package:sucesso_app/pages/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
    Size size = MediaQuery.of(context).size;
    // BODY
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        const ImageIcon(
          AssetImage('assets/images/logo.png'),
          size: 256,
          color: kPrimaryColor,
        ),
        const TextFieldContainer(
          // EMAIL INPUT
          color: kThirdColor,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Email',
              hintStyle: TextStyle(color: kPrimaryColor),
              border: InputBorder.none,
              icon: Icon(
                Icons.email,
                color: kPrimaryColor,
              ),
            ),
          ),
        ),
        const TextFieldContainer(
          // PASSWORD INPUT
          color: kThirdColor,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Password',
              hintStyle: TextStyle(color: kPrimaryColor),
              border: InputBorder.none,
              icon: Icon(
                Icons.lock,
                color: kPrimaryColor,
              ),
            ),
          ),
        ),
        RoundedButton(
          //LOGIN BUTTON
          text: 'LOGIN',
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ),
            );
          },
          color: kPrimaryColor,
          textColor: kThirdColor,
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        Row(
          // BOTTOM PHRASE
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Don't have an account ? ",
              style: TextStyle(color: kPrimaryColor),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterPage(),
                    ));
              },
              child: const Text(
                "Register",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        )
      ],
    );
  }

  AppBar _buildAppBar() {
    // APPBAR
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      title: const Text(
        'Login',
        style: TextStyle(color: kThirdColor, fontWeight: FontWeight.bold),
      ),
    );
  }
}
