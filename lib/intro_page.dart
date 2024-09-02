import 'package:coffee_pie_ui/widgets/bold_text.dart';
import 'package:coffee_pie_ui/widgets/light_text.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'package:flutter/widgets.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_constructors;

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
                child: Image(
                    image: AssetImage('assets/images/17.png'))),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  HomeScreen(),
                    ));
              },
              child: Container(
                width: 300,
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text('Coffee Pie',style: TextStyle(fontFamily: 'Playwrite',fontWeight: FontWeight.bold,fontSize: 22,color: Colors.black)),),
              ),
            ),
            SizedBox(height: 20,),
            LightText(text: 'A Place of Taste')
          ],
        ),
      ),
    );
  }
}
