import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_assist/src/features/home/body/body_screen.dart';
import 'package:wallet_assist/src/widget/sidebar/sidebar_draw.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideDrawer(),
      appBar: AppBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'asset/icon/wmlogo.svg',
              width: 40,
            ),
            const SizedBox(width: 10),
            const Text(
              'WingMan',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
        elevation: 1,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'asset/icon/bell.svg',
              width: 20,
            ),
          ),
        ],
      ),
      body: const BodyScreen(),
    );
  }
}
