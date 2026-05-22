import 'package:flutter/material.dart';
import 'package:grocery/custom_text_form.dart';
import 'package:grocery/custom_container_button.dart';
import 'package:grocery/sign_up.dart';

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 28),
                Center(child: Image.asset('assets/images/logo_icon.png')),
                SizedBox(height: 100),
                Text(
                  'Login',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 15),

                Text(
                  'Enter your email and password',
                  style: TextStyle(fontSize: 16, color: Color(0xFF7C7C7C)),
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
