import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
                        'Create an account',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w900,
                          letterSpacing: -0.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Welcome to the app',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
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
                        .copyWith(bottom: 10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
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
                          'OTP Verification',
                          style: TextStyle(
                            color: const Color(0xffef2a39),
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          'Check your identity. Choose your OTP verification technique.',
                          style: TextStyle(
                            color: const Color.fromARGB(100, 0, 0, 0),
                            fontSize: 10,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                const SizedBox(height: 10),
                                CustomButton(
                                  text: 'Phone Number',
                                  subText: 'Verify with mobile number',
                                  icon: Icons.call,

                                  onPressed: () {
                                    print('Phone verification button clicked');
                                  },
                                  backgroundColor: Colors.white,
                                  // borderColor: Colors.red,
                                  // iconBackgroundColor: const Color(0xfff32121),

                                  borderColor:
                                      const Color.fromARGB(100, 113, 99, 97),
                                  iconBackgroundColor:
                                      const Color.fromARGB(100, 113, 99, 97),
                                ),
                                const SizedBox(height: 20),
                                CustomButton(
                                  text: 'Email',
                                  subText: 'Verify with Email',
                                  icon: Icons.mail,
                                  onPressed: () {
                                    print('Email verification button clicked');
                                  },
                                  backgroundColor: Colors.white,
                                  borderColor:
                                      const Color.fromARGB(100, 113, 99, 97),
                                  iconBackgroundColor:
                                      const Color.fromARGB(100, 113, 99, 97),
                                ),
                                const SizedBox(height: 30),
                                FilledButton(
                                  onPressed: () {
                                    print('Sign Up clicked');
                                  },
                                  style: FilledButton.styleFrom(
                                    elevation: 0,
                                    fixedSize: const Size(double.infinity, 60),
                                    minimumSize:
                                        const Size(double.infinity, 60),
                                    backgroundColor: const Color(0xffc9151e),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: const Text(
                                    'Sign Up',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 30),
                                Align(
                                  alignment: Alignment.center,
                                  child: TextButton(
                                    onPressed: () {
                                      print('New user? Sign Up clicked');
                                    },
                                    style: TextButton.styleFrom(
                                      overlayColor: Colors.transparent,
                                      foregroundColor: Colors.black,
                                      textStyle: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    child: RichText(
                                      text: const TextSpan(
                                        text: 'New user? ',
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'Sign Up',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
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
            ],
          ),
        ),
      ),
    );
  }
}
