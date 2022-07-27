import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petology/cubits/app_cubit/app_cubit.dart';
import 'package:petology/cubits/app_cubit/app_states.dart';
import 'package:petology/widgets/footer.dart';
import 'package:petology/widgets/navigation_bar.dart';

class AdaptionScreen extends StatelessWidget {
  const AdaptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        AppCubit cubit = AppCubit.get(context);

        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const WebNavigationBar(),
                  Container(
                      color: const Color(0xFF492F24),
                      height: 1074,
                      child: const Image(
                        width: 1920,
                        height: 1000,
                        image: AssetImage(
                          'assets/images/food.png',
                        ),
                      )),
                  Stack(
                    children: [
                      SvgPicture.asset('assets/images/home.svg'),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            cubit.feedModel!.title,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 81,
                              color: Color(0XFF492F24),
                            ),
                          ),
                          const SizedBox(
                            height: 80.0,
                          ),
                          Text(
                            cubit.feedModel!.body,
                            style: TextStyle(
                              fontSize: 50,
                              color: Color(0XFF492F24),
                            ),
                          ),
                          // SizedBox(
                          //   height: 80.0,
                          // ),
                          // Text(
                          //   'Richard H. Pitcairn, DVM, PhD, author of Dr. Pitcairn’s Complete Guide to Natural Health for Dogs and Cats, believes the most reliable approach is to feed what seems to be a reasonable amount and monitor his body weight.',
                          //   style: TextStyle(
                          //     fontSize: 50,
                          //     color: Color(0XFF492F24),
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: 80.0,
                          // ),
                          // Text(
                          //   'You should be able to feel your pet’s ribs easily as you slide your hand over his sides,” Pitcairn says. “If you can’t, he’s probably too heavy, so begin to feed a smaller quantity.',
                          //   style: TextStyle(
                          //     fontSize: 50,
                          //     color: Color(0XFF492F24),
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: 100.0,
                          // ),
                          // Text(
                          //   'If you’re using a commercial pet food, beware of the “feeding guidelines” on the bag or box. It lists different weights and the corresponding amount of food to feed your dog to maintain that weight, and should be used only as a rough guideline.',
                          //   style: TextStyle(
                          //     fontSize: 50,
                          //     color: Color(0XFF492F24),
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: 200.0,
                          // ),
                          // Text(
                          //   'Many dogs are overweight because their families closely followed the directions on the label, which often indicates portion sizes that are too large. After all, the sooner the bag is empty, the sooner you will need to buy more food.',
                          //   style: TextStyle(
                          //     fontSize: 50,
                          //     color: Color(0XFF492F24),
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: 100.0,
                          // ),
                          // Text(
                          //   'Starting at the low end of the suggested guidelines and then monitoring your dog for hunger and body condition is a good way to proceed.',
                          //   style: TextStyle(
                          //     fontSize: 50,
                          //     color: Color(0XFF492F24),
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: 100.0,
                          // ),
                          // Text(
                          //   'Different Portions for Different Pooches',
                          //   style: TextStyle(
                          //     fontSize: 50,
                          //     color: Color(0XFF492F24),
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: 100.0,
                          // ),
                          // Text(
                          //   'Though it may sound counterintuitive, as a general rule, large breed dogs require less food and small breed dogs require more food when expressed on a volume of food per pound of body weight. The food requirements of individual dogs vary according to their health, level of activity, and age.',
                          //   style: TextStyle(
                          //     fontSize: 50,
                          //     color: Color(0XFF492F24),
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: 100.0,
                          // ),
                          // Text(
                          //   'Here are some guidelines for portion sizes at different stages of your dog’s life:',
                          //   style: TextStyle(
                          //     fontSize: 50,
                          //     color: Color(0XFF492F24),
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: 100.0,
                          // ),
                          // Text(
                          //   'Puppies: Puppies are typically introduced to solid food at three to four weeks of age and are completely weaned from their mother’s milk by eight weeks.',
                          //   style: TextStyle(
                          //     fontSize: 50,
                          //     color: Color(0XFF492F24),
                          //   ),
                          // ),
                        ],
                      ),
                    ],
                  ),
                  const Footer(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
