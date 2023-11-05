import 'package:flutter/material.dart';
import 'package:minipro/Bar/NavBar.dart';
import 'package:minipro/menu/home.dart';
import 'package:minipro/services/userService.dart';




class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}




class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final UserService _userService = UserService();
  String _errorMessage = '';




  void _handleLogin() async {
    String enteredEmail = _emailController.text;
    String enteredPassword = _passwordController.text;




    if (enteredEmail.isEmpty || enteredPassword.isEmpty) {
      _showError('Please enter both email and password');
      return;
    }




    try {
      var user = await _userService.loginUser(enteredEmail, enteredPassword);
      if (user != null) {
        _navigateToNextScreen();
      } else {
        _showError('Invalid email or password');
      }
    } catch (e) {
      print('Error: $e');
      _showError('Failed to log in');
    }
  }




  void _showError(String message) {
    setState(() {
      _errorMessage = message;
    });
    // You can choose to show an error dialog or snackbar here
  }




  void _navigateToNextScreen() async {
    // Navigate to the Home screen
    await Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => NavBar()),
    );
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Color(0xFFFCAB0C),
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _handleLogin,
              child: Text('Login'),
            ),
            SizedBox(height: 16),
            Text(
              _errorMessage,
              style: TextStyle(color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }




  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}




void main() => runApp(MaterialApp(home: LoginScreen()));











