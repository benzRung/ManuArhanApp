import 'dart:convert';
import 'package:http/http.dart' as http;


class UserService {
  static const String apiUrl = 'http://192.168.123.230:8080/api/login';


  Future<User> loginUser(String email, String password) async {
    final loginData = {'email': email, 'password': password};
    print("Email : " +email);
    print("Password : "+password);


    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(loginData),
      );


      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonData = json.decode(response.body);
        return User.fromJson(jsonData); // Assuming your User.fromJson constructor is defined
      } else {
        throw Exception('Failed to log in');
      }
    } catch (e) {
      throw Exception('Failed to connect to the server: $e');
    }
  }
}


class User {
  final String email;
  final String password;


  User({required this.email, required this.password});


  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      email: json['email'],
      password: json['password'],
    );
  }
}



