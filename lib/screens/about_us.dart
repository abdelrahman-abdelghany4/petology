import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petology/themes/colors.dart';
import 'package:petology/widgets/default_form_field.dart';
import 'package:petology/widgets/footer.dart';
import 'package:petology/widgets/navigation_bar.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 1047,
                    color: AppColors.darkBrown,
                    child: Column(
                      children: <Widget>[
                        WebNavigationBar(),
                        SizedBox(
                          height: 160,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 170),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 537,
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      'Not only people need a house',
                                      style: TextStyle(
                                        fontSize: 68,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est',
                                      style: TextStyle(
                                        fontSize: 20,
                                        height: 2,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.lightSilver,
                                      ),
                                    ),
                                    MaterialButton(
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 700,
                                width: 700,
                                child: Stack(
                                  children: [
                                    SvgPicture.asset('assets/images/dog2.svg'),
                                    // Container(
                                    //   decoration: const BoxDecoration(
                                    //     color: Color(0XFF858585),
                                    //     boxShadow: [
                                    //       BoxShadow(
                                    //           blurRadius: 30.0,
                                    //           color: Color(0XFF858585)),
                                    //     ],
                                    //   ),
                                    // ),
                                    // SvgPicture.asset('assets/images/ellipse.svg'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
