import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petology/cubits/app_cubit/app_cubit.dart';
import 'package:petology/cubits/app_cubit/app_states.dart';
import 'package:petology/data/models/pets_model.dart';
import 'package:petology/screens/reqyest_screen.dart';
import 'package:petology/shared/components.dart';
import 'package:petology/themes/colors.dart';
import 'package:petology/widgets/footer.dart';
import 'package:petology/widgets/navigation_bar.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  ///
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
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
                        height: 1080,
                        color: AppColors.darkBrown,
                        child: Column(
                          children: <Widget>[
                            const WebNavigationBar(),
                            const SizedBox(
                              height: 140,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 120.0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 537,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 125),
                                      child: Column(
                                        children: <Widget>[
                                          const Text(
                                            'Not only people need a house',
                                            style: TextStyle(
                                              fontSize: 68,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const Text(
                                            'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est',
                                            style: TextStyle(
                                              fontSize: 20,
                                              height: 2,
                                              fontWeight: FontWeight.bold,
                                              color: AppColors.lightSilver,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 49,
                                          ),
                                          MaterialButton(
                                            onPressed: () {
                                              navigateTo(context: context, widget:RequestScreen() );
                                            },
                                            height: 105,
                                            minWidth: 537,
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(60),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                right: 49.3,
                                                left: 185,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Text(
                                                    'Help them',
                                                    style: TextStyle(
                                                        fontSize: 30,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Spacer(),
                                                  Icon(
                                                    Icons.arrow_forward_ios,
                                                    size: 30,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  const SizedBox(
                                    width: 100,
                                  ),
                                  Stack(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/images/ellipse.svg',
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 220, bottom: 270),
                                        child: Container(
                                          height: 528,
                                          width: 367,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                'assets/images/dog2.png',
                                              ),
                                            ),
                                            boxShadow: [
                                              // BoxShadow(
                                              //   blurRadius: 30.0,
                                              //   color: Color(0XFF858585),
                                              // ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 750,
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 171),
                        color: Colors.white,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/kalb_ota.png'),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 168,
                              ),
                              child: Stack(
                                children: [
                                  Container(
                                    height: 602,
                                    width: 644,
                                    child: Image(
                                      image: AssetImage(
                                        'assets/images/dog_leg.png',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 749,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'About Petology ',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 69,
                                          ),
                                        ),
                                        Text(
                                          'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est ',
                                          style: TextStyle(
                                            height: 2,
                                            fontSize: 20,
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
                      Container(
                        height: 1078,
                        width: double.infinity,
                        color: Color(0xFFF1F1F1),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 143),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 500),
                                    child: Image.asset(
                                        'assets/images/dog_leg_2.png'),
                                  ),
                                  Text(
                                    'Lets get this right ....',
                                    style: TextStyle(
                                      fontSize: 74,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'What kind of friend you looking for?',
                                style: TextStyle(
                                  fontSize: 66,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 138,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    child: Container(
                                      height: 351,
                                      width: 334,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(37),
                                          border: Border.all(width: 2)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                              'assets/images/dog_icon.png'),
                                          SizedBox(
                                            height: 45,
                                          ),
                                          Text(
                                            'Dogs',
                                            style: TextStyle(
                                              fontSize: 46,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    onHover: (value) {},
                                  ),
                                  SizedBox(
                                    width: 111,
                                  ),
                                  Container(
                                    height: 351,
                                    width: 334,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(37),
                                        border: Border.all(width: 2)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                            'assets/images/cat_icon.png'),
                                        SizedBox(
                                          height: 45,
                                        ),
                                        Text(
                                          'Cats',
                                          style: TextStyle(
                                            fontSize: 46,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 1450,
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 500),
                                  child: Image.asset(
                                    'assets/images/dog_leg_2.png',
                                  ),
                                ),
                                const SizedBox(
                                  width: 656,
                                  child: Text(
                                    'Our friends who looking for a house',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 69,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 760,
                              child: ListView.separated(
                                itemBuilder: (context, index) => PetContainer(cubit.petsModel!, index),
                                separatorBuilder: (context, index) => SizedBox(width: 100,),
                                itemCount: cubit.petsModel!.pets!.length,
                                scrollDirection: Axis.horizontal,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 1920,
                        height: 1482,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/screen.png'),
                          ),
                        ),
                      ),
                      const Footer(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget PetContainer(PetsModel model, int index) => Container(
        width: 481,
        height: 760,
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.darkBrown,
            width: 4,
          ),
          borderRadius: BorderRadius.circular(88),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              '${model.pets![index].image[0]}',
              width: 380,
              height: 380,
            ),
            Text(
              model.pets![index].name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50,
                color: AppColors.darkBrown,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            MaterialButton(
              onPressed: () {},
              minWidth: 355,
              height: 109,
              child: Text(
                'Read More',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: AppColors.darkBrown,
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(55),
                side: BorderSide(
                  color: AppColors.lightBrown,
                  width: 8,
                ),
              ),
            ),
          ],
        ),
      );
}
