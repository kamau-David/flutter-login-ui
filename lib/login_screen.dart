import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Controllers to capture what the user types
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // It's a best practice to dispose controllers when the screen is closed
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _handleSignIn() {
    // For now, we'll just check if they entered something
    if (_emailController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty) {
      // SUCCESS: Navigate to Home and remove the Login screen from the stack
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    } else {
      // ERROR: Show a quick message if empty
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter your email and password')),
      );
    }
  }

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
                    'Welcome Back!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                const Text('Email', style: TextStyle(color: Colors.white)),
                const SizedBox(height: 10),

                // Updated to use the Controller
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: 'your email',
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                      color: Colors.white70,
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.2),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),

                const SizedBox(height: 20),
                const Text('Password', style: TextStyle(color: Colors.white)),
                const SizedBox(height: 10),

                // Updated to use the Controller
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'password',
                    prefixIcon: const Icon(
                      Icons.lock_outlined,
                      color: Colors.white70,
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.2),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),

                const SizedBox(height: 40),
                SizedBox(
                  height: 56,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _handleSignIn, // Trigger our navigation logic
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 146, 99, 234),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'Sign In',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),

                Center(
                  child: TextButton(
                    onPressed: () {
                      // This pushes the SignupScreen onto the stack
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignupScreen(),
                        ),
                      );
                    },
                    child: Text.rich(
                      TextSpan(
                        text: 'Don\'t have an account?',
                        style: const TextStyle(
                          color: Colors.black38,
                          fontSize: 18,
                        ),
                        children: [
                          TextSpan(
                            text: ' Sign up',
                            style: const TextStyle(
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
    );
  }
}
