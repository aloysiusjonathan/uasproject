// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class SellerLoginScreen extends StatefulWidget {
  @override
  _SellerLoginScreenState createState() => _SellerLoginScreenState();
}

class _SellerLoginScreenState extends State<SellerLoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;

  void _login() {
    setState(() {
      _isLoading = true;
    });

    // Validasi email sebelum melakukan autentikasi
    bool isValidEmail = EmailValidator.validate(_emailController.text);

    if (!isValidEmail) {
      setState(() {
        _isLoading = false;
      });
      // Tampilkan pesan bahwa email tidak valid atau lakukan tindakan lainnya
      // Misalnya, menampilkan snackbar dengan pesan kesalahan
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Email is not valid.'),
          duration: Duration(seconds: 2),
        ),
      );
      return;
    }

    // Lanjutkan ke proses autentikasi jika email valid
    // Simulasi autentikasi (contoh, seharusnya menggunakan metode autentikasi yang sesungguhnya)
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
      // Jika autentikasi berhasil, lanjutkan ke halaman selanjutnya (misalnya dashboard)
      // Jika tidak berhasil, tampilkan pesan error atau lakukan tindakan lainnya
    });
  }

  void _goToRegisterScreen() {
    Navigator.pushNamed(context, '/register');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seller Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
              SizedBox(height: 24.0),
              _isLoading
                  ? CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: _login,
                      child: Text('Login'),
                    ),
              SizedBox(height: 12.0),
              TextButton(
                onPressed: _goToRegisterScreen,
                child: Text('Daftar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}