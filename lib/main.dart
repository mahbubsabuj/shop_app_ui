import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'items/category_items.dart';

main() => runApp(App());

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 60,
        child: BottomAppBar(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Explore",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    // Text(".",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    Icon(LineIcons.dotCircleAlt)
                  ],
                )),
                Container(
                  child: Icon(LineIcons.shoppingCart),
                ),
                Container(
                  child: Icon(Icons.person_outline),
                ),
              ],
            ),),
      ),
      body: SafeArea(
              child: SingleChildScrollView(
                              child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 35,
                      width: MediaQuery.of(context).size.width - 95,
                      decoration:
                          BoxDecoration(color: Color.fromRGBO(247, 247, 247, 1)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(0, 197, 105, 1),),
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
            ),
            SizedBox(
                height: 10,
            ),
            Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "Categories",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
            ),
            Padding(
                padding: EdgeInsets.all(15),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      categoryItem("Men", Icon(LineIcons.personEnteringBooth)),
                      categoryItem("Women", Icon(LineIcons.laptop)),
                      categoryItem(
                        "Devices",
                        Icon(LineIcons.lightbulb),
                      ),
                      categoryItem("Gadgets", Icon(LineIcons.headphones)),
                      categoryItem("Gaming", Icon(LineIcons.gamepad)),
                    ],
                  ),
                ),
            ),
            Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Best Selling",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
            ),
            Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        product("BeoPlay Speaker", "Bang and Olufsen"),
                        product("Leather Wristwatch", "Tag Heuer"),
                      ],
                    ),

                  ],
                ),
            ),
          ],
        ),
              ),
      ),
    );
  }
}
