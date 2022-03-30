import 'package:flutter/material.dart';
import 'package:sucesso_app/components/constants.dart';
import '../components/rounded_button.dart';
import '../components/text_field_container.dart';
import 'login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
          // NAME INPUT
          color: kThirdColor,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'First Name',
              hintStyle: TextStyle(color: kPrimaryColor),
              border: InputBorder.none,
              icon: Icon(
                Icons.person,
                color: kPrimaryColor,
              ),
            ),
          ),
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
        SizedBox(
          height: size.height * 0.02,
        ),
        Row(
          // BOTTOM PHRASE
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Already have an account ? ",
              style: TextStyle(color: kPrimaryColor),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ));
              },
              child: const Text(
                "Login",
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
        'Register',
        style: TextStyle(color: kThirdColor, fontWeight: FontWeight.bold),
      ),
    );
  }
}
