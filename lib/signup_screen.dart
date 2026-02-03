import 'package:flutter/material.dart';
import 'package:login_screen/textfield_design.dart'; // Using your custom field

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF4A7DFF), Color.fromARGB(255, 146, 99, 234)],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Text(
                    'Create Account',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                // Full Name
                const Text('Full Name', style: TextStyle(color: Colors.white)),
                const SizedBox(height: 10),
                const GlassTextField(
                  hintText: 'John Doe',
                  icon: Icons.person_outline,
                  obscureText: false,
                ),

                const SizedBox(height: 20),

                // Phone Number (Crucial for M-Pesa)
                const Text(
                  'M-Pesa Number',
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 10),
                const GlassTextField(
                  hintText: '0712345678',
                  icon: Icons.phone_android_outlined,
                  obscureText: false,
                ),

                const SizedBox(height: 20),

                // Email
                const Text('Email', style: TextStyle(color: Colors.white)),
                const SizedBox(height: 10),
                const GlassTextField(
                  hintText: 'email@example.com',
                  icon: Icons.email_outlined,
                  obscureText: false,
                ),

                const SizedBox(height: 20),

                // Password
                const Text('Password', style: TextStyle(color: Colors.white)),
                const SizedBox(height: 10),
                const GlassTextField(
                  hintText: 'password',
                  icon: Icons.lock_outlined,
                  obscureText: true,
                ),

                const SizedBox(height: 40),

                // Sign Up Button
                SizedBox(
                  height: 56,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // We will add the Node.js POST request here later!
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 146, 99, 234),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'Register',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ),
                ),

                Center(
                  child: TextButton(
                    onPressed: () =>
                        Navigator.pop(context), // Goes back to Login
                    child: const Text(
                      'Already have an account? Login',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
