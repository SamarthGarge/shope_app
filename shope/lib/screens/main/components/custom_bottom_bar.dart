import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomBar extends StatelessWidget {
  final TabController controller;

  const CustomBottomBar({
    required this.controller,
  });
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.transparent,
      elevation: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Image.asset('assets/icons/home.png'),
            onPressed: () {
              controller.animateTo(0);
            },
          ),
          IconButton(
            icon: Image.asset('assets/icons/category_icon.png'),
            onPressed: () {
              controller.animateTo(1);
            },
          ),
          IconButton(
            icon: SvgPicture.asset('assets/icons/cart_icon.svg'),
            onPressed: () {
              controller.animateTo(2);
            },
          ),
          IconButton(
            icon: Image.asset('assets/icons/profile_icon.png'),
            onPressed: () {
              controller.animateTo(3);
            },
          )
        ],
      ),
    );
  }
}




