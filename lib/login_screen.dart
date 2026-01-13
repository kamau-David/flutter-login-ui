import 'package:flutter/material.dart';
import 'package:login_screen/textfield_design.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF4A7DFF), Color.fromARGB(255, 146, 99, 234)],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsetsGeometry.symmetric(vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Welcome Back!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Center(
                    child: Text(
                      'Sign in to your account',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),

                  SizedBox(height: 40),
                  Text('Email', style: TextStyle(color: Colors.white)),

                  SizedBox(height: 10),

                  GlassTextField(
                    hintText: 'your email',
                    icon: Icons.email_outlined,
                    obscureText: false,
                  ),

                  SizedBox(height: 40),

                  GlassTextField(
                    hintText: 'password',
                    icon: Icons.lock_outlined,
                    obscureText: true,
                    suffixIcon: Icons.visibility_off_outlined,
                  ),

                  SizedBox(height: 10),

                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(
                          color: const Color.fromARGB(224, 255, 255, 255),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 40),
                  SizedBox(
                    height: 56,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 146, 99, 234),
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  Row(
                    children: [
                      Expanded(child: Divider(color: Colors.white30)),
                      Padding(
                        padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
                      ),
                      Text(
                        'OR',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
                      ),

                      Expanded(child: Divider(color: Colors.white30)),
                    ],
                  ),
                  SizedBox(height: 20),

                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: Image.asset('assets/images/Google-G-Logo.png'),
                      label: Text(
                        'Sign in with google',
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: BorderSide(color: Colors.white),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Text.rich(
                        TextSpan(
                          text: 'Don\'t have an account?',
                          style: TextStyle(color: Colors.black38, fontSize: 18),
                          children: [
                            TextSpan(
                              text: ' Sign up',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
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
        ),
      ),
    );
  }
}
