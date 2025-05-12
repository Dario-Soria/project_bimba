import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../utils/app_styles.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppStyles.horizontalPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              const SizedBox(height: 8),

              // Logo
              Image.asset(
                'assets/logo.png',
                height: 100,
              ),

              const SizedBox(height: 32),

              // Title
              const Text(
                'Trainity',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              // Description
              const Text(
                'Your training journey begins here',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 40),

              // Divider line
                Row(
                  children: const [
                    Expanded(child: Divider()),
                  ],
                ),

                const SizedBox(height: 16),

              // Google
              _socialButton(
                icon: FontAwesomeIcons.google,
                label: 'Continue with Google',
                backgroundColor: Colors.white,
                textColor: Colors.black,
                borderColor: Colors.black12,
                onPressed: () {
                  // TODO: Google Sign-In
                },
              ),

              const SizedBox(height: 12),

              // Apple
              _socialButton(
                icon: FontAwesomeIcons.apple,
                label: 'Continue with Apple',
                backgroundColor: Colors.black,
                textColor: Colors.white,
                borderColor: Colors.black,
                onPressed: () {
                  // TODO: Apple Sign-In
                },
              ),

              const SizedBox(height: 12),

              // Facebook
              _socialButton(
                icon: FontAwesomeIcons.facebookF,
                label: 'Continue with Facebook',
                backgroundColor: Color(0xFF1877F2),
                textColor: Colors.white,
                borderColor: Colors.transparent,
                onPressed: () {
                  // TODO: Facebook Sign-In
                },
              ),

              const SizedBox(height: 12),

              // Twitter
              _socialButton(
                icon: FontAwesomeIcons.twitter,
                label: 'Continue with Twitter',
                backgroundColor: Color(0xFF1DA1F2),
                textColor: Colors.white,
                borderColor: Colors.transparent,
                onPressed: () {
                  // TODO: Twitter Sign-In
                },
              ),

              const SizedBox(height: 12),

              // Microsoft
              _socialButton(
                icon: FontAwesomeIcons.microsoft,
                label: 'Continue with Microsoft',
                backgroundColor: Colors.grey[800]!,
                textColor: Colors.white,
                borderColor: Colors.transparent,
                onPressed: () {
                  // TODO: Microsoft Sign-In
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Custom social button builder
  Widget _socialButton({
    required IconData icon,
    required String label,
    required Color backgroundColor,
    required Color textColor,
    required Color borderColor,
    required VoidCallback onPressed,
  }) {
    return SizedBox(
      width: double.infinity,
      height: AppStyles.buttonHeight,
      child: OutlinedButton.icon(
        icon: FaIcon(icon, color: textColor, size: 20),
        label: Text(label, style: TextStyle(color: textColor)),
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: backgroundColor,
          side: BorderSide(color: borderColor),
          shape: AppStyles.rounded,
        ),
      ),
    );
  }
}