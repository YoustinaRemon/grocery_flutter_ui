import 'package:flutter/material.dart';
import 'package:grocery/core/widgets/text_field.dart';
import 'package:grocery/core/widgets/login_signup_button.dart';
import 'package:grocery/screens/signup/sign_up.dart';
import '../../core/widgets/header_of_first_screens.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 28),
                HeaderOfFirstScreens(
                  text1: 'Login',
                  text2: 'Enter your email and password',
                ),

                SizedBox(height: 40),
                const CustomTextForm(text: 'Email'),
                SizedBox(height: 30),
                const CustomTextForm(
                  text: 'Password',
                  obscureText: true,
                  suffixIcon: Icon(Icons.visibility),
                ),

                SizedBox(height: 20),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text('Forget Password?'),
                ),

                SizedBox(height: 30),

                const CustomContainerButton(
                  text: 'Login',
                  text2: 'Don\'t have an account?',
                  text3: 'Sign Up',
                  route: SignUpScreen(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
