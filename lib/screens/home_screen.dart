import 'package:flutter/material.dart';
import 'package:summit/constants.dart';
import 'package:summit/components/RoundedButton.dart';
import 'login_screen.dart';
import 'signup_screen.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kHomeBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage('images/logoMystic.png'),
              ),
              SizedBox(height: 20.0,),
              RoundedButton(
                colour: kLightBlueGrey,
                textColour: kDarkBlueGrey,
                title: 'Sign Up',
                onPressed: () {
                  Navigator.pushNamed(context, SignupScreen.id);
                },
              ),
              RoundedButton(
                colour: kLightBlueGrey,
                textColour: kDarkBlueGrey,
                title: 'Log In',
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                },
              ),
            ],
          ),
        ),
      )
    );
  }
}

