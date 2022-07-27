import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petology/cubits/app_cubit/app_cubit.dart';
import 'package:petology/cubits/app_cubit/app_states.dart';
import 'package:petology/themes/colors.dart';
import 'package:petology/widgets/default_form_field.dart';
import 'package:petology/widgets/navigation_bar.dart';

enum PetCategories {
  dogs,
  cats,
}

class RequestScreen extends StatelessWidget {
  var nameController = TextEditingController();

  String? selectedCategory;
  List<String> categories = ['dog', 'cat'];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        'assets/images/background2.png',
                        width: 1920,
                        height: 3889,
                      ),
                      Column(
                        children: [
                          WebNavigationBar(),
                          SizedBox(
                            height: 200,
                          ),
                          Container(
                            height: 2984.66,
                            width: 1285.92,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColors.darkBrown, width: 3),
                                borderRadius: BorderRadius.circular(88)),
                            child: Column(
                              children: [
                                Text(
                                  'Request',
                                  style: TextStyle(
                                      fontSize: 78,
                                      fontWeight: FontWeight.bold),
                                ),
                                Image.asset('assets/images/dog2.png'),
                                PhysicalModel(
                                  borderRadius: BorderRadius.circular(41),
                                  color: Colors.white,
                                  elevation: 12,
                                  shadowColor: Colors.black,
                                  clipBehavior: Clip.antiAlias,
                                  child: defaultFormFIeld(
                                    controller: nameController,
                                    label: 'Name',
                                    keyboardType: TextInputType.name,
                                    validate: (String? value) {
                                      if (value!.isEmpty) {
                                        return 'name must not be empty';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                DropdownButtonFormField(
                                  value: selectedCategory,
                                  hint: Text(
                                    'choose category',
                                  ),
                                  isExpanded: true,
                                  onChanged: (value) {
                                    // setState(() {
                                    //   _selectedValue = value;
                                    // });
                                  },
                                  onSaved: (value) {
                                    // setState(() {
                                    //   _selectedValue = value;
                                    // });
                                  },
                                  items: categories.map((String val) {
                                    return DropdownMenuItem(
                                      value: val,
                                      child: Text(
                                        val,
                                      ),
                                    );
                                  }).toList(),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 429.65,
                                      height: 115.53,
                                      child: PhysicalModel(
                                        borderRadius: BorderRadius.circular(41),
                                        color: Colors.white,
                                        elevation: 12,
                                        shadowColor: Colors.black,
                                        clipBehavior: Clip.antiAlias,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Selected Value',
                                                style: TextStyle(
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.bold,
                                                  color: AppColors.darkBrown,
                                                ),
                                              ),
                                              Spacer(),
                                              PopupMenuButton(
                                                onSelected: (selectedValue) {
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
                                                itemBuilder: (_) => categories.map((String val) {
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
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
      listener: (context, state) {},
    );
  }
  Widget sha5a() => DropdownButtonFormField(
    decoration: InputDecoration(
      border: InputBorder.none,
    ),
    value: selectedCategory,
    hint: Text(
      'choose category',
    ),
    isExpanded: true,
    onChanged: (value) {
      // setState(() {
      //   _selectedValue = value;
      // });
    },
    onSaved: (value) {
      // setState(() {
      //   _selectedValue = value;
      // });
    },
    items: categories.map((String val) {
      return DropdownMenuItem(
        value: val,
        child: Text(
          val,
        ),
      );
    }).toList(),
  );
}
