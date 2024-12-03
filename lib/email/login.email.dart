import 'package:flutter/material.dart';

class LoginFormPage extends StatefulWidget {
  const LoginFormPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginFormPageState createState() => _LoginFormPageState();
}

class _LoginFormPageState extends State<LoginFormPage> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff4d4d4d),
                ),
              ),
            ),
            const SizedBox(height: 18),
            
            // Email TextField
            const Text(
              'Email',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            const SizedBox(height: 0),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white.withOpacity(0.8),
                prefixIcon: Icon(Icons.mail_outline, color: Colors.blue[900]),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.blue.shade900),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.blue.shade900),
                ),
              ),
            ),
            const SizedBox(height: 2), // Reduced space between email and password

            // Password TextField with label above and blue border
            const Text(
              'Kata Sandi',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            const SizedBox(height: 0), // Reduced space between label and input
            TextField(
              obscureText: !_isPasswordVisible, // Controls visibility
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white.withOpacity(0.8),
                labelStyle: const TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.lock_outline, color: Colors.blue[900]),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.blue.shade900),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.blue.shade900),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                    color: const Color.fromARGB(255, 13, 71, 161),
                  ),
                  onPressed: () {
                    // Toggle password visibility
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 250), // Reduced space between the password and the button

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Prevent navigation to the next page
                  // Uncomment the line below to enable navigation
                  // Navigator.pushNamed(context, '/register');
                  // For now, it just shows a message
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Harap masukkan email dan kata sandi yang benar')),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[900],
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
