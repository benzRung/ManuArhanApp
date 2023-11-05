import 'package:flutter/material.dart';
import 'package:minipro/Services/GetRecipeService.dart';
import 'package:minipro/models/recipes.dart';


class MenuType extends StatefulWidget{
  const MenuType({Key? key}) : super(key: key);
  
  @override
  
  State<MenuType> createState() => _MenuTypeState();
}

class _MenuTypeState extends State<MenuType>{
  late Recipes recipes;
  bool isLoading = false;

  @override
  void initState(){
    super.initState();
    isLoading = true;
    // title = 'Loading user...';
    recipes = Recipes();

    GetRecipeServices.getRecipes().then((userFromServer){
      setState(() {
      //  users = Users();
       recipes =  userFromServer;
      //  title = widget.title;
      isLoading = false;
      });
    });
  }

Widget list(){
    return Expanded(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, index) {
          return Menu(index);
        },
        ),
      ); 
  }

Widget Menu(index){
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
                '${recipes!.recipes[index].typeFood.iconType}',
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ประเภทต้ม',
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
            
            list()

          ],
        ),
     ),
    );
  }
} 