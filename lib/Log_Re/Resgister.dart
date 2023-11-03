import 'package:flutter/material.dart';

class Resgister extends StatefulWidget{
  const Resgister({Key? key}) : super(key: key);
  
  @override
  
  State<Resgister> createState() => _ResgisterState();
}

 
class _ResgisterState extends State<Resgister>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Menu',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 30 // ทำให้ตัวอักษรหนาขึ้น
        ),),
        backgroundColor: Color.fromARGB(255, 255, 207, 35),
        centerTitle: true, // จัดให้ title อยู่กลาง
      ),
      body: Container(
      color: Color.fromARGB(255, 255, 255, 255),
      padding: const EdgeInsets.all(5.0),
        child: Column(
          children:  <Widget> [
            

          ],
        ),
     ),
    );
  }
} 