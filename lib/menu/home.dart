import 'package:flutter/material.dart';
import 'package:minipro/menu/DetailMenu.dart';
import 'package:minipro/menu/MenuType.dart';
import 'package:minipro/Services/GetRecipeService.dart';
import 'package:minipro/models/recipes.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Recipes recipes;
  bool isLoading = false;
  // late String title;

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

  Widget Menus(index) {
    return Card(
      color: Color.fromARGB(255, 255, 255, 255),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ListTile(
                onTap:(){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Detail(
                  recipe: recipes!.recipes[index],
                )));
            },
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  '${recipes!.recipes[index].image}',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text("เมนู : ${recipes!.recipes[index].recipeName}",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), fontSize: 16)),
              subtitle: Text("สูตรของ ${recipes!.recipes[index].user.firstName}",
                  style: TextStyle(
                      color: Color.fromARGB(255, 103, 103, 103), fontSize: 14)),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          
          ],
        ),
      ),
    );
  }

  Widget ListMenus(){
    return Expanded(
      child: ListView.builder(
        itemCount: recipes.recipes == null ? 0 : recipes.recipes.length,
        itemBuilder: (BuildContext context, index) {
          return Menus(index);
        },
        ),
      ); 
  }
  Widget Types(index) {
    return GestureDetector(
      onTap: () {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => MenuType(
        
      )));
  },
    child: Padding(
      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
      child: Container(
        width: 109,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              color: Color(0x33000000),
              offset: Offset(0, 2),
            )
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.network(
                  '${recipes!.recipes[index].typeFood.iconType}',
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
              child: Text(
                '${recipes!.recipes[index].typeFood.nameType}',
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }

  Widget ListMenuType() {
    return Container(
        width: 412,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            itemCount: recipes.recipes == null ? 0 : recipes.recipes.length,
            itemBuilder: (BuildContext context, index) {
              print(index);
              return Types(index);
            },
          ),
        ));
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 30 // ทำให้ตัวอักษรหนาขึ้น
              ),
        ),
        backgroundColor: Color(0xFFFCAB0C),
        centerTitle: true, // จัดให้ title อยู่กลาง
      ),
      body: Container(
        color: Color.fromARGB(255, 255, 255, 255),
        padding: const EdgeInsets.all(5.0),
        child: isLoading
        ? const Center(
          child: CircularProgressIndicator(),
        )
        : Column(
          children: <Widget>[
            ListMenuType(),
            Padding(padding: EdgeInsets.only(bottom: 10.0),
            child: Text(
              "เมนูแนะนำ",
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            ),
            ListMenus(),
          ],
        ),
      ),
    );
  }
}
