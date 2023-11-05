import 'package:flutter/material.dart';
import 'package:minipro/models/user.dart';
import 'package:minipro/models/user.dart';

class Profile extends StatefulWidget{
  const Profile({Key? key}) : super(key: key);
  
  @override
  
  State<Profile> createState() => _ProfileState();
}

Widget ProfileUser(){
  return Card(
    clipBehavior: Clip.antiAliasWithSaveLayer,
    color: Color.fromARGB(255, 255, 255, 255),
    elevation: 4,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    child: Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
              'https://icons.veryicon.com/png/o/business/multi-color-financial-and-business-icons/user-139.png',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(0.00, 0.00),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8, 0, 10, 10),
            child: Column(
              mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(0.00, 0.00),
                      child: Text(
                        'User',
                       style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w700
                       ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Text(
                          'Email',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      ]
        ),
  );
}

 Widget Menus() {
    return Card(
      color: Color.fromARGB(255, 255, 255, 255),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  'https://th.bing.com/th/id/R.a55f7d81254d3fa22efc5a1aa73e8fc5?rik=NatOQH1C9h2N9w&pid=ImgRaw&r=0',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              title: const Text("เมนู",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), fontSize: 16)),
              subtitle: const Text("สูตรของ",
                  style: TextStyle(
                      color: Color.fromARGB(255, 103, 103, 103), fontSize: 14)),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),

            // onTap:(){
            //   Navigator.of(context).push(MaterialPageRoute(
            //     builder: (context) => UserDetail(
            //       user: users!.users[index],
            //       )));
            // },
          ],
        ),
      ),
    );
  }

  Widget ListMenus(){
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, index) {
          return Menus();
        },
        ),
      ); 
  }

class _ProfileState extends State<Profile>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 30 // ทำให้ตัวอักษรหนาขึ้น
        ),),
        backgroundColor: Color.fromARGB(255, 255, 207, 35),
        centerTitle: true, // จัดให้ title อยู่กลาง),
      ),
       body: Container(
        color: Color.fromARGB(255, 255, 255, 255),
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: <Widget>[
           ProfileUser(),
          //  ListMenus()
          ],
        ),
      ),
    );
  }
} 