import 'package:coffee_pie_ui/widgets/bold_text.dart';
import 'package:flutter/material.dart';
import 'code_short.dart';
import 'code_short2.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_constructors;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List Names = [
    'Cappuccino',
    'Espresso',
    'Latte',
    'Flat Wallio',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items:  const [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Colors.white,size: 30,), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined,color: Colors.white), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_outline,color: Colors.white), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.notifications_outlined,color: Colors.white), label: ""),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.19),
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Icons.apps,
                        color: Colors.grey.withOpacity(0.4),
                      ),
                    ),
                    Text('Coffee Pie',style: TextStyle(fontFamily: 'Playwrite',fontWeight: FontWeight.bold,fontSize: 20,color: Colors.orange)),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.19),
                          borderRadius: BorderRadius.circular(100)),
                      child: Image(image: AssetImage('assets/images/boy.png')),
                    )
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: BoldText(
                  text: 'Find the best\ncoffee for you',
                  size: 30,
                ),
              ),

              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.2),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: 'Find your coffee...',
                                border: InputBorder.none),
                          ))
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              SizedBox(
                width: double.maxFinite,
                height: 30,
                child: ListView.builder(
                  itemCount: Names.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 30,
                      width: 110,
                      child: Center(
                          child: BoldText(
                            text: Names[index],
                            size: 16,
                            color: index == 0
                                ? Colors.orange
                                : Colors.grey.withOpacity(0.5),
                          )),
                    );
                  },
                ),
              ),

              SizedBox(height: 30),

              /// Images Section

              Codeshort(),

              SizedBox(height: 20),

              /// Special for you

              BoldText(text: 'Special for you'),
              SizedBox(
                height: 12,
              ),

              Codeshort2(),
            ],
          ),
        ),
      ),
    );
  }
}
