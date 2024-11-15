import 'package:flutter/material.dart';
import 'package:loginscreen2/screens/screens.dart';
import '../widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 48,
                          // fontFamily: GoogleFonts.poppins().fontFamily,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      // const SizedBox(height: 5),
                      Text(
                        'Welcome to the app',
                        textScaler: const TextScaler.linear(1.2),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Poppins',
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
                            Image.asset(
                              'assets/images/half-circle.png',
                              width: 100,
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Enter your credentials',
                          textScaler: const TextScaler.linear(1.2),
                          style: TextStyle(
                            color: const Color.fromARGB(255, 239, 42, 57),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                const CredentialInput(
                                  hintText: 'Email',
                                  icon: Icons.person,
                                ),
                                const SizedBox(height: 20),
                                const CredentialInput(
                                  hintText: 'Password',
                                  icon: Icons.lock,
                                  isPassword: true,
                                ),
                                const SizedBox(height: 10),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: TextButton(
                                    onPressed: () {
                                      print('forgot password clicked');
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
                                    child: const Text('Forgot Password'),
                                  ),
                                ),
                                const SizedBox(height: 30),
                                FilledButton(
                                  onPressed: () {
                                    print('login clicked');
                                  },
                                  style: FilledButton.styleFrom(
                                    elevation: 0,
                                    fixedSize: const Size(double.infinity, 60),
                                    minimumSize:
                                        const Size(double.infinity, 60),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: BorderSide.none,
                                    ),
                                    backgroundColor: const Color(0xffc9151e),
                                  ),
                                  child: const Text(
                                    'Login',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 30),
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
                                    minimumSize:
                                        const Size(double.infinity, 60),
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

                                      // Navigate to the SignUpScreen
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CreateAccountScreen()),
                                      );
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
                                        text: 'New user? ',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'Sign Up',
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
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
