import 'package:flutter/material.dart';

class Add extends StatefulWidget{
  const Add ({Key? key}) : super(key: key);
  
  @override
  
  State<Add> createState() => _AddState();
}

Widget AddImage(){
  return Card(
    clipBehavior: Clip.antiAliasWithSaveLayer,
    color: Colors.white,
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
        Align(
          alignment: AlignmentDirectional(0.00, 0.00),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8, 0, 10, 10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFC940C)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0), // ปรับมุมโค้งที่นี่
                    ),
                  ),
                 
                  ), 
                  
                  icon: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0), // ขยับไอคอนไปทางขวา 5 พิกเซล
                    child: Icon(
                      Icons.add_a_photo_sharp,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  label: Padding(
                    
                    padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                  ),
                ),

                Expanded(
                child: Align(
                alignment: AlignmentDirectional(1.00, 0.00),
                child: ElevatedButton.icon(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 0, 171, 63)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0), // ปรับมุมโค้งที่นี่
                    ),
                  ),
                 
                  ), 
                  
                  icon: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0,0), // ขยับไอคอนไปทางขวา 5 พิกเซล
                    child: Icon(
                      Icons.check,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  label: Padding(
                    
                    padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                  ),
                ),
                ),
                 ),
              ]
                ), 
            ),
          ),
      ]
        ),
  );
 
}

Widget FromMenu(){
  return Column(
  children : [ 
    Row(
    mainAxisSize: MainAxisSize.max,
    children: [
      Padding(
        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
        child: Text(
          'ชื่อเมนู      : ',
          style: TextStyle(
                fontFamily: 'Plus Jakarta Sans',
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      Expanded(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 8, 0),
          child: TextFormField(
            // controller: _model.textController1,
            // focusNode: _model.textFieldFocusNode1,
            autofocus: true,
            obscureText: false,
            decoration: InputDecoration(
              hintText: 'ข้าวผัดปู',
              hintStyle: TextStyle(
                color: Color.fromARGB(31, 0, 0, 0)
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 58, 54, 50),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFFC940C),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              errorBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 255, 0, 0),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedErrorBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 255, 0, 0),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            // style: FlutterFlowTheme.of(context).bodyMedium,
            // validator: _model.textController1Validator.asValidator(context),
          ),
        ),
      ),
    ], 
  ),
  // Generated code for this Row Widget...
Padding(
  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
  child: Row(
    mainAxisSize: MainAxisSize.max,
    children: [
      Padding(
        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
        child: Text(
          'ส่วนผสม   : ',
          style: TextStyle(
                fontFamily: 'Plus Jakarta Sans',
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      Expanded(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 8, 0),
          child: TextFormField(
            autofocus: true,
            obscureText: false,
            decoration: InputDecoration(
              hintText: '1. ไข่ไก่ 2 ฟอง\n2. กุ้ง 1 กิโลกรัม',
              hintStyle: TextStyle(
                color: Color.fromARGB(31, 0, 0, 0),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 58, 54, 50),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFFC940C),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              errorBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 255, 0, 0),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedErrorBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 255, 0, 0),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            maxLines: 15,//จำนวนบรรทัดศุงสุด
            minLines: 1,//จำนวนบรรทัดเริ่มต้น
          ),
        ),
      ),
    ],
  ),
),
// Generated code for this Row Widget...
Padding(
  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
  child: Row(
    mainAxisSize: MainAxisSize.max,
    children: [
      Padding(
        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
        child: Text(
          'วิธีทำ         : ',
          style: TextStyle(
                fontFamily: 'Plus Jakarta Sans',
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      Expanded(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(25, 0, 8, 0),
          child: TextFormField(
            autofocus: true,
            obscureText: false,
            decoration: InputDecoration(
              
              hintText: '1.  ต้มน้ำให้เดือด\n2. ใส่ไข่ลงไป',
              hintStyle:  TextStyle(
                color: Color.fromARGB(31, 0, 0, 0),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 58, 54, 50),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFFC940C),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              errorBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 255, 0, 0),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedErrorBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 255, 0, 0),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            maxLines: 30,//จำนวนบรรทัดศุงสุด
            minLines: 1,//จำนวนบรรทัดเริ่มต้น
            
          ),
        ),
      ),
    ],
  ),
)

  ]
);

}

class _AddState extends State<Add>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Menu',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 30 // ทำให้ตัวอักษรหนาขึ้น
        ),),
        backgroundColor: Color(0xFFFCAB0C),
        centerTitle: true, // จัดให้ title อยู่กลาง),
      ),
      body: SingleChildScrollView(
        child:Container(
        color: Color.fromARGB(255, 255, 255, 255),
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: <Widget>[
            AddImage(),
            FromMenu(),
          ],
        ),
      ),
      ),
       
    );
  }
} 