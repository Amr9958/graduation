// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment_app/constants/constats.dart';
import 'package:payment_app/widget/widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 750,
          child: Column(children: [
            Container(
              child: Stack(children: [
                Container(
                  width: 415,
                  height: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(imgurl_1),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: 400,
                  height: 370,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.elliptical(70, 70),
                        bottomRight: Radius.elliptical(70, 70)),
                    color: Color.fromARGB(69, 82, 174, 176),
                  ),
                ),
              ]),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  elevation: 2,
                  child: Container(
                    width: 366,
                    height: 378,
                    decoration: ShapeDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Vision of the school',
                                style: Styles.style24bold),
                            Text(
                              'Book an appointment with secritury.\nAttend via appointment letter. \nGet consultent.',
                              style: Styles.style16bold,
                            ),
                            SizedBox(height: 10),
                            Container(
                              child: SvgPicture.asset('assets/imgs/Nav.svg'),
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  'Get started',
                                  style: Styles.style16boldwhite,
                                ),
                              ),
                              width: 306,
                              height: 64,
                              decoration:
                                  BoxDecoration(color: Color(0xFF52AEB0)),
                            )
                          ]),
                    ),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
