import 'package:coffee_pie_ui/widgets/bold_text.dart';
import 'package:coffee_pie_ui/widgets/light_text.dart';
import 'package:flutter/material.dart';

class Codeshort2 extends StatelessWidget {
  List Names = [
    'Cappuccino',
    'Espresso',
    'Latte',
    'Flat Wallio',
  ];
  Codeshort2({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 272,
      child: ListView.builder(
        itemCount: Names.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Expanded(
              child: Container(
                margin: const EdgeInsets.only(bottom: 24),
                height: 200,
                width: 170,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(24)),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: Stack(children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 160,
                              width: 140,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Image.asset(
                                'assets/images/11.png',
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                FittedBox(
                                    child: BoldText(
                                      text:
                                      '5 Coffee Beans You \n         Must Try !',
                                      color: Colors.orange,
                                    )),
                                const SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    FittedBox(
                                        child: LightText(
                                          text:
                                          'We have the best coffee \n       all over the world',
                                          size: 15,
                                        )),
                                    const SizedBox(
                                      height: 17,
                                    ),
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            BoldText(
                                              text: '\$',
                                              size: 32,
                                              color: Colors.orange,
                                            ),
                                            BoldText(
                                              text: ' 3.90',
                                              size: 24,
                                            ),
                                            const SizedBox(
                                              width: 80,
                                            ),
                                          ],
                                        ),
                                        Container(
                                          width: 44,
                                          height: 44,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(10),
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
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ]),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
