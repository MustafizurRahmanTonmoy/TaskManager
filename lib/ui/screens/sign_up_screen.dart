import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manger/ui/utils/app_colors.dart';
import 'package:task_manger/ui/widgets/screen_backgound.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ScreenBackGround(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 90),
                Text(
                  'Join With Us',
                  style: textTheme.displaySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 24),
                _buildSignUpForm(),
                SizedBox(height: 24),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _buildSignInSection(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }



  Widget _buildSignInSection() {
    return RichText(
      text:  TextSpan(
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 14,
          letterSpacing: 0.5,
        ),
        text: "Have an account?",
        children: [
          TextSpan(
            text: 'Sign In',
            style: TextStyle(color: AppColor.themeColor),
            recognizer: TapGestureRecognizer()..onTap = _onTapSignIn
          ),
        ],
      ),
    );
  }

  Widget _buildSignUpForm() {
    return Column(
      children: [
        TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(hintText: 'Email'),
        ),
        SizedBox(height: 8),
        TextFormField(
            decoration: InputDecoration(hintText: 'First name'),
        ),
        SizedBox(height: 8),
        TextFormField(
          decoration: InputDecoration(hintText: 'Last name'),
        ),
        SizedBox(height: 8),
        TextFormField(
          decoration: InputDecoration(hintText: 'Mobile'),
        ),
        SizedBox(height: 8),
        TextFormField(
          decoration: InputDecoration(hintText: 'Password'),
        ),
        SizedBox(height: 24),
        ElevatedButton(
          onPressed: () {},
          child: const Icon(Icons.arrow_circle_right_outlined),
        ),
      ],
    );
  }

  void _onTapNextButton(){
    //TODO : implement on tap
  }

  void _onTapForgotPassword(){
    // TODO: Implement on tap forgot
  }

  void _onTapSignIn(){
    Navigator.pop(context);
  }
}
