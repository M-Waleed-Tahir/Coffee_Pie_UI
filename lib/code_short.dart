import 'package:coffee_pie_ui/widgets/bold_text.dart';
import 'package:coffee_pie_ui/widgets/light_text.dart';
import 'package:flutter/material.dart';

class Codeshort extends StatelessWidget {
  List Names = [
    'Cappuccino',
    'Espresso',
    'Latte',
    'Flat Wallio',
  ];
  Codeshort({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 272,
      child: ListView.builder(
        itemCount: Names.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Expanded(
            child: Container(
              margin: const EdgeInsets.only(right: 20),
              height: 270,
              width: 170,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20)),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Stack(children: [
                      Container(
                        height: 160,
                        width: 140,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(20)),
                        child: Image.asset(
                          'assets/images/12.png',
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 80),
                        width: 60,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.6),
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 15,
                            ),
                            BoldText(
                              text: ' 4.5',
                              size: 13,
                            )
                          ],
                        ),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 180, left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BoldText(text: Names[index]),
                        LightText(
                          text: 'With Oat Milk',
                          size: 12,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  BoldText(
                                    text: '\$',
                                    color: Colors.orange,
                                  ),
                                  BoldText(text: ' 4.20'),
                                ],
                              ),
                              Container(
                                width: 34,
                                height: 34,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.orange,
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 24,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
