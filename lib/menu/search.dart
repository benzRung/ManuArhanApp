import 'package:flutter/material.dart';

class Search extends StatefulWidget{
  const Search({Key? key}) : super(key: key);
  
  @override
  
  State<Search> createState() => _SearchState();
}

  Widget searchMenu(){
    return Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0,10),
    child: TextField(
      decoration:  const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(
            5.0,
          )),
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.all(15.0),
        hintText: 'Search Menu...',
      ),
    ),
    );
    
  
   
  }

Widget list(){
    return Expanded(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, index) {
          return Menu();
        },
        ),
      ); 
  }

Widget Menu(){
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
                'https://picsum.photos/seed/2/600',
                width: 493,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-1.00, 0.00),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
              child: Text(
                'Hello World',
                style: TextStyle(
                      fontFamily: 'Plus Jakarta Sans',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-1.00, 0.00),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
              child: Text(
                'Hello World',
                
              ),
            ),
          ),
        ],
      ),
    );

}

class _SearchState extends State<Search>{
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
            searchMenu(),
            
            list()

          ],
        ),
     ),
    );
  }
} 