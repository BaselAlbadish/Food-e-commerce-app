import 'package:flutter/material.dart';
import 'package:my_food/Screens/home/home.dart';
import 'package:my_food/core/themes/light_theme.dart';

import '../../core/presentation/routes/routes.dart';

class LoginWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Center(
          child: Image(
            image: AssetImage("assets/images/coffee_logo.png"),
            width: 200.0,
          ),
        ),
        const SizedBox(
          height: 50.0,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white.withAlpha(200),
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          ),
          padding: const EdgeInsets.all(16),
          width: 300,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              const TextField(
                cursorColor: kSecondaryColor,
                decoration: InputDecoration(
                  hintText: 'Username',
                ),
              ),
              const TextField(
                cursorColor: kSecondaryColor,
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
              ),
              ButtonTheme(
                minWidth: 300.0,
                colorScheme: ColorScheme.fromSeed(seedColor: kSecondaryColor,),
                child: ElevatedButton(
                  child: const Text(
                    'Login',
                    style: TextStyle(color: kPrimaryColor, fontSize: 20),
                  ),
                  onPressed: () {
                    navigateWithReplace(context: context, widget: HomePage());
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}