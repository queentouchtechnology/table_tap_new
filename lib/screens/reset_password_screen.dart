import 'package:flutter/material.dart';
import 'package:loginscreen2/screens/otp_screen.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffc9151e),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Reset Password',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            // fontFamily: GoogleFonts.poppins().fontFamily,
                            fontWeight: FontWeight.w900,
                            letterSpacing: -0.5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        // const SizedBox(height: 5),
                        Text(
                          'You’ve requested to reset your password. ',
                          textScaler: const TextScaler.linear(1.2),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            // fontFamily: GoogleFonts.poppins().fontFamily,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(25),
                        child: Image.asset(
                          'assets/images/food-in-hand.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 24,
                          spreadRadius: 0,
                          offset: Offset(0, 8),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30)
                          .copyWith(bottom: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Transform.translate(
                                offset: Offset(0, -50),
                                child: Image.asset(
                                  'assets/images/securityicon.png',
                                  width: 100,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 2),
                          Text(
                            'Reset Password',
                            textScaler: const TextScaler.linear(1.2),
                            style: TextStyle(
                              color: const Color.fromARGB(255, 239, 42, 57),
                              fontSize: 20,
                              // fontFamily: GoogleFonts.poppins().fontFamily,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          const SizedBox(height: 30),
                          Text(
                            'Create a new password to regain access to your account. Enter your new password below and confirm it to proceed',
                            textScaler: const TextScaler.linear(1.2),
                            style: TextStyle(
                              color: const Color(0xff40484E),
                              fontSize: 14,
                              // fontFamily: GoogleFonts.poppins().fontFamily,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Expanded(
                              child: SingleChildScrollView(
                                  child: Column(
                            children: [
                              // const SizedBox(height: 20),
                              TextField(
                                decoration: InputDecoration(
                                  labelText: 'Enter New Password',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              const SizedBox(height: 20),
                              TextField(
                                decoration: InputDecoration(
                                  labelText: 'Confirm Password',
                                  border: OutlineInputBorder(),
                                ),
                              ),

                              const SizedBox(height: 30),
                              FilledButton(
                                onPressed: () {
                                  print('login clicked');

                                  // Navigate to the SignUpScreen
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => OtpScreen()),
                                  );
                                },
                                style: FilledButton.styleFrom(
                                  elevation: 0,
                                  fixedSize: const Size(double.infinity, 60),
                                  minimumSize: const Size(double.infinity, 60),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide.none,
                                  ),
                                  backgroundColor: const Color(0xffc9151e),
                                ),
                                child: const Text(
                                  'Confirm',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              FilledButton.icon(
                                onPressed: () {
                                  print('login with google clicked');
                                },
                                icon: Image.asset(
                                  'assets/images/google-G-icon.png',
                                ),
                                style: FilledButton.styleFrom(
                                  elevation: 0,
                                  fixedSize: const Size(double.infinity, 60),
                                  minimumSize: const Size(double.infinity, 60),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide.none,
                                  ),
                                  backgroundColor: Colors.grey.shade200,
                                ),
                                label: const Text(
                                  'Login with Google',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 30),
                              Align(
                                alignment: Alignment.center,
                                child: TextButton(
                                  onPressed: () {
                                    print('new user? sign up clicked');
                                  },
                                  style: TextButton.styleFrom(
                                    overlayColor: Colors.transparent,
                                    foregroundColor: Colors.black,
                                    textStyle: const TextStyle(
                                      decoration: TextDecoration.none,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  child: RichText(
                                    text: const TextSpan(
                                      text: 'Have an account? ',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'Login',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )))
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
