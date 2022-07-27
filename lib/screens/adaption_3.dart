import 'package:flutter/material.dart';
import 'package:petology/themes/colors.dart';
import 'package:petology/widgets/footer.dart';
import 'package:petology/widgets/navigation_bar.dart';
//sssss
class Adaption3Screen extends StatelessWidget {
  const Adaption3Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const WebNavigationBar(),
              const SizedBox(
                height: 100,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset('assets/images/photo.png',),
                  ListView.separated(
                  itemBuilder: (context, index) => buildCatItem(),
                  separatorBuilder: (context, index) => const SizedBox(width: 20,),
                  itemCount:3,
                  ),
                ],
              ),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
  Widget buildCatItem () =>  Container(
    width: double.infinity,
    height: 1450,
    child: Column(
      children: [
        Container(
          width: 481,
          height: 760,
          decoration: BoxDecoration(
            color: const Color(0xFFEAEAEA),
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
              const Text(
                'Roy',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: AppColors.darkBrown,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              MaterialButton(
                color: const Color(0xFF492F24),
                onPressed: () {},
                minWidth: 355,
                height: 109,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(80.0)),

                ),
                child:  const Text(
                  'Read More',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: AppColors.lightBrown,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
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
    ),
  );
}
