// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:minipro/Bar/NavBar.dart';
import 'package:minipro/menu/home.dart';


class Dashboard extends StatefulWidget{
  const Dashboard({Key? key}) : super(key: key);
  
  @override
  
  State<Dashboard> createState() => _LoginState();
}


class _LoginState extends State<Dashboard>{
  
  Widget LogIn(){
    return Column(
      children:<Widget> [
        Padding(padding: EdgeInsets.only(
          top: 100,
        ),
        child: Image.network('https://scontent.fbkk10-1.fna.fbcdn.net/v/t1.15752-9/395679806_279273814448728_7495014512897631777_n.png?_nc_cat=101&ccb=1-7&_nc_sid=8cd0a2&_nc_eui2=AeFPPIxGlag4HPYdZnyIR2v2jEhC16HPzGyMSELXoc_MbIjI2-poLn_mVkR62qbdacajFIFWz37ipL3pO5Dd4wJW&_nc_ohc=slfqLNI9blsAX875MJu&_nc_ht=scontent.fbkk10-1.fna&oh=03_AdQzkYvfeGhPGFd3BH5qKI5vzcPun19LFNYbUOhTJH63zQ&oe=65646276',
        width: 350,
        height: 350,
        ),
      ),
      Padding(padding: EdgeInsets.only(
        bottom: 40,

      ),
      child: const Text('Menu Arhan',
      style: TextStyle(fontSize: 60,
      color: Colors.white,
      fontWeight: FontWeight.w600),
      ),
      
      ),
      ElevatedButton( onPressed: () async {
        Navigator.push(context,MaterialPageRoute(
           builder: (context) => NavBar()), // เปลี่ยนเป็นหน้าปลายทางที่คุณต้องการไป);
        );
      },
      style: ElevatedButton.styleFrom(
         primary: Colors.white, // สีพื้นหลังของปุ่ม
         onPrimary: Colors.black, // สีของข้อความบนปุ่ม
         minimumSize: Size(300, 50)
      ),
      child: Text('เข้าสู่ระบบ',
      style: TextStyle(fontSize: 20,
      fontWeight: FontWeight.w700),
      ),
      ),
      Padding(padding: EdgeInsets.only(
          top: 10,
        ),
        child: TextButton( onPressed: () async {
        Navigator.push(context,MaterialPageRoute(
           builder: (context) => NavBar()), // เปลี่ยนเป็นหน้าปลายทางที่คุณต้องการไป);
        );
      },
      style: TextButton.styleFrom(
          onSurface: const Color.fromARGB(255, 0, 0, 0), // สีเมื่อกดปุ่ม
         minimumSize: Size(300, 50)
      ), child: Text('สมัครสมาชิก',
      style: TextStyle(fontSize: 15,
      color: Color.fromARGB(255, 146, 110, 1)),),

      ),
      )
      ],

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color(0xFFFCAB0C),
     body: Align(
      child: Column(
        children: [
          LogIn(),
        ],
      ),
     ),
    );
  }
} 