import 'dart:async';

import 'package:flutter/material.dart';
import 'package:minipro/Services/GetRecipeService.dart';
import 'package:minipro/models/recipes.dart';
import 'package:minipro/menu/DetailMenu.dart';


class Search extends StatefulWidget{
  const Search({Key? key}) : super(key: key);
  
  @override
  
  State<Search> createState() => _SearchState();
}

class Debouncer{
  final int milliseconds;
  VoidCallback? action;
  Timer? _timer;

  Debouncer({required this.milliseconds});

  run(VoidCallback action){
    if(null != _timer){
      _timer?.cancel();
    }
    _timer = Timer(Duration(milliseconds: milliseconds),action);
  }
}

class _SearchState extends State<Search>{

  final debouncer = Debouncer(milliseconds: 1000);
  Recipes? recipes;
  bool isLoading = false;
  // String? title;

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
      onChanged: (string){
        debouncer.run((){
          setState(() {
           
          });
          GetRecipeServices.getRecipes().then((usersFromServer){
            setState(() {
              recipes = Recipes.filterList(usersFromServer,string);
              // title = widget.title;
            });
          });
        });
      },
    ),
    );
    
  
   
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
   if (index < 0 || index >= (recipes?.recipes.length ?? 0)) {
    // ดัชนีไม่ถูกต้อง ทำอะไรสักอย่างเช่นการแสดงข้อความผิดพลาด
    return Container();
  }
   return GestureDetector(
    onTap: () {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Detail(
          recipe: recipes!.recipes[index],
        ),
      ));
    },
  child: Padding(padding: 
  EdgeInsets.only(
    bottom: 10.0,
  ),
  child: Card(
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
                '${recipes!.recipes[index].image}',
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
                "เมนู : ${recipes!.recipes[index].recipeName}",
                style: TextStyle(
                      fontFamily: 'Plus Jakarta Sans',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(
            bottom: 10,
          ),
            child:  Align(
            alignment: AlignmentDirectional(-1.00, 0.00),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
              child: Text(
                "สูตรของ ${recipes!.recipes[index].user.firstName}",
                
              ),
            ),
          ),
          ),
        
        ],
      ),
  ),
  ),
    );

}


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
        child: isLoading
        ? const Center(
          child:  CircularProgressIndicator(),
        ) 
        : Column(
          children:  <Widget> [
            searchMenu(),
            
            list()

          ],
        ),
     ),
    );
  }
} 