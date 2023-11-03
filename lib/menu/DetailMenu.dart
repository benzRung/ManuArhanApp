import 'package:flutter/material.dart';

class Detail extends StatefulWidget{
  const Detail({Key? key}) : super(key: key);
  
  @override
  
  State<Detail> createState() => _DetailState();
}

Widget DetailMenu(){
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
          padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              'https://picsum.photos/seed/249/600',
              width: 493,
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
                          'Hello World',
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

Widget D(){
  return Padding(
  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
  child: Card(
    clipBehavior: Clip.antiAliasWithSaveLayer,
    // color: FlutterFlowTheme.of(context).secondaryBackground,
    elevation: 4,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    child: Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              'https://picsum.photos/seed/249/600',
              width: 374,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'ต้มยำ',
              style: TextStyle(
                    fontFamily: 'Plus Jakarta Sans',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
        Text(
          'สูตรของ :',
          style: TextStyle(
                fontFamily: 'Plus Jakarta Sans',
                color: Color(0xFF464646),
              ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
          child: Container(
            width: 341,
            height: 400,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 20, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'ส่วนผสม',
                        style:
                            TextStyle(
                                  fontFamily: 'Plus Jakarta Sans',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 20),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        '1. Hello World',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
          child: Container(
            width: 341,
            height: 500,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 20, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'วิธีทำ',
                        style:
                            TextStyle(
                                  fontFamily: 'Plus Jakarta Sans',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 20),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        '1. Hello World',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
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
class _DetailState extends State<Detail>{
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
      body: SingleChildScrollView(
        child:Container(
        color: Color.fromARGB(255, 255, 255, 255),
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: <Widget>[
            // DetailMenu(),
            D(),
          ],
        ),
      ),
      ),
    );
  }
} 