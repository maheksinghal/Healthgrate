import 'package:flutter/material.dart';

import '../../const/Palette.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                top: 20,
                left: 32,
                child: Icon(
                  Icons.more_horiz,
                  color: Palette.greenAccent, // Color of the left icon
                  size: 30,
                ),
              ),
              Positioned(
                top: 20,
                right: 32,
                child: Icon(
                  Icons.more_horiz,
                  color: Palette.greenAccent, // Color of the right icon
                  size: 30,
                ),
              ),
              Column(
                children: [
                  // Logo and Banner
                  Container(
                    margin: EdgeInsets.only(top: 60),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/icons/appicon.png',
                          height: 120,
                        ),
                        Text(
                          'HEALTHGRATE',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Integrating Health Care Solution',
                          style: TextStyle(
                            fontSize: 8,
                          ),
                        ),
                        SizedBox(height: 50),
                      ],
                    ),
                  ),

                  // Login Section
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Login Title
                        Center(
                          child: Column(
                            children: [
                              Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 26.4,
                                  fontWeight: FontWeight.bold,
                                  color: Palette.login,
                                ),
                              ),
                              Text(
                                'Sign in to continue',
                                style: TextStyle(
                                  fontSize: 14.3,
                                  color: Palette.login,
                                ),
                              ),
                              SizedBox(height: 35),
                            ],
                          ),
                        ),

                        // Email/Phone TextField
                        TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: 'Email/ Phone',
                            hintStyle: TextStyle(
                              color: Palette.white,
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 18),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: Palette.greenAccent,
                          ),
                        ),
                        SizedBox(height: 28),

                        // Password TextField
                        TextField(
                          textAlign: TextAlign.center,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              color: Palette.white,
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 18),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: Palette.greenAccent,
                          ),
                        ),
                        SizedBox(height: 28),

                        // Log In Button
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'Home Screen');
                            },
                            child: Text('Log In',
                                style: TextStyle(
                                    fontSize: 14.3,
                                    color: Palette.white,
                                    fontWeight: FontWeight.bold)),
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(vertical: 18),
                              primary: Palette.greenAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 30),

                        // Sign Up and Forgot Password
                        Center(
                          child: Column(
                            children: [
                              Text('Don\'t have an Account?',
                                  style: TextStyle(
                                      color: Palette.login, fontSize: 10.3)),
                              GestureDetector(
                                onTap: () {
                                  // Navigate to sign-up
                                },
                                child: Text(
                                  'Sign up to Login',
                                  style: TextStyle(
                                    color: Palette.login,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.3,
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              GestureDetector(
                                onTap: () {
                                  // Navigate to forgot password
                                },
                                child: Text(
                                  'Forgot Password',
                                  style: TextStyle(
                                    color: Palette.login,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.3,
                                  ),
                                ),
                              ),
                              Text(
                                'www.healthgrate.com',
                                style: TextStyle(
                                  color: Palette.login,
                                  fontSize: 10.3,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
