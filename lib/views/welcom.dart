// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class welcom extends StatelessWidget {
  const welcom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: clip_oval(),
                ),
                Positioned(
                    top: 50,
                    right: 20,
                    child: Container(
                        width: 50,
                        height: 50,
                        child: Image.asset('assets/imgs/Group 635.png'))),
                Positioned(
                    top: 50,
                    left: 150,
                    child: Container(
                        width: 100,
                        height: 100,
                        child: SvgPicture.asset('assets/imgs/Group.svg'))),
                Positioned(
                    top: 140,
                    left: 60,
                    child: Container(
                        width: 50,
                        height: 50,
                        child: Image.asset('assets/imgs/Handshake Heart.jpg'))),
                Positioned(
                  top: 150,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 5),
                    child: Text(
                      'Welcome To\n Smart School',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF3D7E80),
                        fontSize: 32,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 256,
              child: null,
            ), //هنحط هنا ال3 دواير وجواهم الصور
            clip_oval2()
          ],
        ),
      ),
    );
  }
}

class clip_oval extends StatelessWidget {
  const clip_oval({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 200,
              width: 400,
              decoration: ShapeDecoration(
                  shape: OvalBorder(
                side: BorderSide(
                    width: 8, color: Color.fromARGB(210, 79, 162, 165)),
              )),
            ),
            Container(
              width: 400,
              height: 110,
              decoration: BoxDecoration(color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}

class clip_oval2 extends StatelessWidget {
  const clip_oval2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 400,
      child: Stack(
        children: [
          Container(
            height: 200,
            width: 400,
            decoration: ShapeDecoration(
                color: Color(0x3352AEB0),
                shape: OvalBorder(
                  side: BorderSide(
                      width: 8, color: Color.fromARGB(210, 79, 162, 165)),
                )),
          ),
          Positioned(
            top: 110,
            child: Container(
              width: 400,
              height: 100,
              decoration: BoxDecoration(color: Colors.white),
            ),
          ),
          Positioned(
            top: 110,
            child: Container(
              width: 400,
              height: 110,
              decoration: BoxDecoration(color: Color(0x3352AEB0)),
            ),
          ),
        ],
      ),
    );
  }
}
