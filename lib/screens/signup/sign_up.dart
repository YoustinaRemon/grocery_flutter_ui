import 'package:flutter/material.dart';
import 'package:grocery/core/widgets/custom_text_form.dart';
import 'package:grocery/core/widgets/login_signup_button.dart';
import 'package:grocery/screens/login/login_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                  'Sign Up',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 15),

                Text(
                  'Enter your credentials to continue',
                  style: TextStyle(fontSize: 16, color: Color(0xFF7C7C7C)),
                ),
                SizedBox(height: 40),

                const CustomTextForm(text: 'Username'),
                SizedBox(height: 30),

                const CustomTextForm(
                  text: 'Email',
                  suffixIcon: Icon(Icons.check, color: Colors.green),
                ),

                SizedBox(height: 30),

                const CustomTextForm(
                  text: 'Password',
                  obscureText: true,
                  suffixIcon: Icon(Icons.visibility),
                ),

                SizedBox(height: 20),

                Wrap(
                  children: [
                    Text('By continuing you agree to our '),
                    Text(
                      'Terms of Service ',
                      style: TextStyle(color: Color(0xFF53B175)),
                    ),
                    Text('and '),
                    Text(
                      'Privacy Policy',
                      style: TextStyle(color: Color(0xFF53B175)),
                    ),
                  ],
                ),

                SizedBox(height: 30),

                const CustomContainerButton(
                  text: 'Sign Up',
                  text2: 'Already have an account?',
                  text3: 'Login',
                  route: LoginScreen(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
