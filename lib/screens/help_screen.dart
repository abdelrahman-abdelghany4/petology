import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petology/cubits/app_cubit/app_cubit.dart';
import 'package:petology/cubits/app_cubit/app_states.dart';
import 'package:petology/screens/request_screen.dart';
import 'package:petology/shared/components.dart';
import 'package:petology/themes/colors.dart';
import 'package:petology/widgets/default_form_field.dart';
import 'package:petology/widgets/footer.dart';
import 'package:petology/widgets/navigation_bar.dart';

class HelpScreen extends StatelessWidget {

  String? selectedCategory;
  List<String> categories = ['dog', 'cat'];

  HelpScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);

        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Form(
                key: AppCubit.get(context).formKey,
                child: Column(
                  children: [
                    const WebNavigationBar(),
                    const SizedBox(
                      height: 100,
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset('assets/images/ph.png',
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 1500.0),
                          child: Container(
                            height: 1658.66,
                            width: 1285.92,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(88)),
                            child: Padding(
                              padding: const EdgeInsets.all(82.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Help your friend',
                                    style: TextStyle(fontSize: 78,color: Color(0xFF492F24)),
                                  ),
                                  const SizedBox(
                                    height: 55,
                                  ),
                                  IconButton(onPressed: (){}, icon:const Icon(Icons.photo_camera,size: 150,color: Color(0xFF492F24))),
                                  const SizedBox(
                                    height: 200,
                                  ),

                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 975.7,
                                        height: 115.53,
                                        child: PhysicalModel(
                                          borderRadius: BorderRadius.circular(41),
                                          color: Colors.white,
                                          elevation: 5,
                                          shadowColor: Colors.black,
                                          clipBehavior: Clip.antiAlias,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 25.0,
                                            ),
                                            child: Row(
                                              children: [
                                                Text(
                                                  cubit.category,
                                                  style: const TextStyle(
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.bold,
                                                    color: AppColors.darkBrown,
                                                  ),
                                                ),
                                                const Spacer(),
                                                PopupMenuButton(
                                                  onSelected: (String selectedValue) {
                                                    AppCubit.get(context)
                                                        .selectCategory(
                                                        selectedValue);
                                                    // setState(() {
                                                    //   if (selectedValue == FilterOptions.favorites) {
                                                    //     _showOnlyFavorites = true;
                                                    //   } else {
                                                    //     _showOnlyFavorites = false;
                                                    //   }
                                                    // });
                                                  },
                                                  icon: const Icon(
                                                    Icons.keyboard_arrow_down,
                                                    size: 29,
                                                    color: AppColors.darkBrown,
                                                  ),
                                                  itemBuilder: (_) =>
                                                      categories.map((String val) {
                                                        return PopupMenuItem(
                                                          value: val,
                                                          child: Text(
                                                            val,
                                                          ),
                                                        );
                                                      }).toList(),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 74,
                                      ),
                                      const Text('Detect your current location',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30,
                                        ),),
                                      defaultFormFIeld(
                                        controller: cubit.locationHelpController,
                                        label: 'Location',
                                        keyboardType: TextInputType.streetAddress,
                                        validate: (String? value) {
                                          if (value!.isEmpty) {
                                            return 'Location must not be empty';
                                          }
                                          return null;
                                        },
                                        suffix: Icons.location_on,
                                      ),
                                      const SizedBox(
                                        height: 74,
                                      ),
                                      defaultFormFIeld(
                                        controller: cubit.phoneHelpController,
                                        label: 'Phone',
                                        keyboardType:
                                        TextInputType.streetAddress,
                                        validate: (String? value) {
                                          if (value!.isEmpty) {
                                            return 'Phone must not be empty';
                                          }
                                          return null;
                                        },

                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 87,
                                  ),
                                  MaterialButton(
                                    onPressed: () {
                                      navigateTo(context: context, widget: RequestScreen());
                                    },
                                    minWidth: 975.7,
                                    height: 134.85,
                                    color: const Color(0xFF492F24),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(54),
                                        side: const BorderSide(
                                            color: Color(0XFFFFE3C5),
                                            width: 2)),
                                    child: const Text(
                                      'Send',
                                      style: TextStyle(
                                        color: Color(0xFFFFE3C5),
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 55,
                                  ),
                                  MaterialButton(
                                    onPressed: () {},
                                    minWidth: 975.7,
                                    height: 134.85,
                                    color: const Color(0XFFFFE3C5),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(54),
                                        side: const BorderSide(
                                            color: Color(0XFFFFE3C5),
                                            width: 2)),
                                    child: const Text(
                                      'Call',
                                      style: TextStyle(
                                        color: Color(0xFF492F24),
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Footer(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
