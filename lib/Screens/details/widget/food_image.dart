import 'package:flutter/material.dart';
import 'package:my_food/core/themes/light_theme.dart';
import '../../../models/food.dart';

class FoodImg extends StatelessWidget {
  Food food;

  FoodImg({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                    color: kBackground,
                  ),
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.all(15),
              width: 220,
              height: 220,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    offset: Offset(-1, 10),
                    blurRadius: 10,
                  )
                ],
              ),
              child: Image.asset(
                food.imgUrl!,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
