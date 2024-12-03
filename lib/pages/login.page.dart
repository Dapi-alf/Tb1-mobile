import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 161, 179, 197), // Light blue background color
              Color(0xFFF8FAFD) // Lighter gradient towards the bottom
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo at the top
            Image.asset(
              'Hal2/logo.png', // Replace with actual logo path
              height: 200,
            ),
            const SizedBox(height: 30), // Space between logo and buttons

            // Login Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to login page
                    Navigator.pushNamed(context, '/loginForm');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0D47A1), // Button color
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                   child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Register Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    // Navigate to register page
                    Navigator.pushNamed(context, '/register');
                  },
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    side: const BorderSide(color: Color(0xFF0D47A1)),
                  ),
                  child: const Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff4d4d4d),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),

            // Descriptive text below buttons
            const Column(
              children: [
                Text(
                  'Kebaikan Alam',
                  style: TextStyle(fontSize: 16, color: Color(0xff4d4d4d)),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 4),
                Text(
                  'Kebaikan Hidup',
                  style: TextStyle(fontSize: 16, color: Color(0xff4d4d4d)),
                  textAlign: TextAlign.center,
                ),
              ],
            ),

            const SizedBox(height: 40), // Space before bottom images

            // Bottom wave and bottle images
            Expanded(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  // Wave background with specific width and height
                  Positioned(
                    bottom: 0,
                    child: Image.asset(
                      'Hal2/proper.png', // Replace with the actual wave image path
                      width: 360, // Fixed width of 360 pixels
                      height: 300, // Adjust the height as needed
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Bottle image positioned at the bottom
                  Positioned(
                    top: 0,
                    child: Image.asset(
                      'Hal2/botol.png', // Replace with actual bottle image path
                      height: 300,
                      width:300 ,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
