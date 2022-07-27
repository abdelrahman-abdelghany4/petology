import 'package:flutter/material.dart';
import 'package:petology/themes/colors.dart';
import 'package:petology/widgets/footer.dart';
import 'package:petology/widgets/navigation_bar.dart';

class Adaption3Screen extends StatelessWidget {
   Adaption3Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
               WebNavigationBar(),
               SizedBox(
                height: 100,
              ),
              Stack(
                children: [
                  Image.asset(
                    'assets/images/photo.png',
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildCatItem(),
                  separatorBuilder: (context, index) =>  SizedBox(width: 20,),
                  itemCount:3,
                  ),
                ],
              ),
               Footer(),
            ],
          ),
        ),
      ),
    );
  }
  Widget buildCatItem ()=>  Column(
    children: [
      Container(
        width: 481,
        height: 760,
        decoration: BoxDecoration(
          color:  Color(0xFFEAEAEA),
          borderRadius: BorderRadius.circular(88),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/dog2.png',
              width: 380,
              height: 380,
            ),
             Text(
              'Roy',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50,
                color: AppColors.darkBrown,
              ),
            ),
             SizedBox(
              height: 30,
            ),
            MaterialButton(
              color:  Color(0xFF492F24),
              onPressed: () {},
              minWidth: 355,
              height: 109,
              shape:  RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(80.0)),

              ),
              child:   Text(
                'Read More',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: AppColors.lightBrown,
                ),
              ),
            ),
             SizedBox(
              height: 20.0,
            ),
             Text(
              'by Sara',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color:Color(0xFF180701),
              ),
            ),
          ],
        ),
      )
    ],
  );
}
