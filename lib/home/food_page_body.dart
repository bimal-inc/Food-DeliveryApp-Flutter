import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/Icon_and_text.dart';
import 'package:food_delivery/widgets/bigtext.dart';
import 'package:food_delivery/widgets/smallText.dart';

// stack widget overlays one on top of another.
// left and right scroller = page boilder/ page controller / page view builder

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  _FoodPageBodyState createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  //child container
  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
          height: 220,
          margin: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: index.isEven ? Color(0XFF69c5df) : Color(0xFF9294cc),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/image/food0.png"))),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 120,
            margin: EdgeInsets.only(left: 30, right: 30, bottom: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            child: Container(
              padding: EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: "Chinese Side"),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Wrap(
                        //wrap is a repeatation of something horizontaly
                        children: List.generate(
                            5,
                            (index) => Icon(
                                  Icons.star,
                                  color: AppColors.mainColor,
                                  size: 15,
                                )),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SmallText(text: "4.5"),
                      SizedBox(
                        width: 10,
                      ),
                      SmallText(text: "12348"),
                      SizedBox(
                        width: 10,
                      ),
                      SmallText(text: "Comments"),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      IconAndText(
                          icon: Icons.circle_sharp,
                          text: "Normal",
                          IconColor: AppColors.iconColor1),
                      IconAndText(
                          icon: Icons.location_on,
                          text: "1.7km",
                          IconColor: AppColors.mainColor),
                      IconAndText(
                          icon: Icons.access_time_rounded,
                          text: "32min",
                          IconColor: AppColors.iconColor2)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

//parent container
  PageController pageController = PageController(
      viewportFraction: 0.85); //this makes next silde visible a litte

  var currPageValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      height: 320,
      child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }
}
