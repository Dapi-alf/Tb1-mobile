import 'package:flutter/material.dart';
import 'pages/login.page.dart'; // Import halaman login
import 'email/login.email.dart'; // Import halaman login form (Page 3)
import 'regis/Register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aqua App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),         // Page 1
        '/login': (context) => const LoginPage(),    // Page 2
        '/loginForm': (context) => const LoginFormPage(), // Page 3
        '/register': (context) => const RegisterFormPage()
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Mengambil ukuran layar
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('Hal1/gambar.1.jpg'), // Path ke gambar latar
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Logo di bagian atas
            SizedBox(height: screenHeight * 0.1), // Spacing di atas, 5% dari tinggi layar
            Image.asset(
              'Hal1/logo.png', // Path ke logo Aqua
              height: screenHeight * 0.28, // Adjust logo size
            ),
            
            // Teks di tengah
            const Padding(
              padding: EdgeInsets.only(top: 0.01), 
              child: Column(
                children: [
                  Text(
                    'KEBAIKAN ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'BERAWAL ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    'DARI SINI',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Terpercaya lebih ',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  Text(
                    'dari 45 tahun',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.02), // 2% dari tinggi layar

            // Tombol
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(10),
              ),
              child: const Icon(Icons.arrow_forward, color: Colors.black),
            ),

            // Spacer untuk memberi ruang antara tombol dan gambar botol
            SizedBox(height: screenHeight * 0.03),

            // Stack to position wave image behind the bottle image at the bottom of the screen
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Stack(
                  clipBehavior: Clip.none, // Allow overflow if needed
                  children: [
                    // Wave Image positioned at the bottom
                    Positioned(
                      bottom: 0, // Set to bottom of the screen
                      child: Image.asset(
                        'Hal1/wave.png', // Path to the wave image
                        height: 120,
                      ),
                    ),
                    // Bottle Image positioned above the wave
                    Positioned(
                      bottom: screenHeight * 0, // Add spacing to ensure the bottle isn't cut off
                      left: (screenWidth - (screenHeight * 0.4)) / 1.5, // Center the bottle horizontally
                      child: Image.asset(
                        'Hal1/produk.png', // Path to the bottle image
                        height: screenHeight * 0.4, // Increased bottle size to 50% of screen height
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
