
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
  List<String> years = ['2011', '2012', '2013'];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      builder: (context, state) {
        var cubit = AppCubit.get(context);
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
                                  decoration: InputDecoration(
                                    helperText: 'fdfdfdf',
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
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 25.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                cubit.year,
                                                style: const TextStyle(
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.bold,
                                                  color: AppColors.darkBrown,
                                                ),
                                              ),
                                              const Spacer(),
                                              PopupMenuButton(
                                                onSelected:
                                                    (String selectedValue) {
                                                  AppCubit.get(context)
                                                      .selectYear(selectedValue);
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
                                                itemBuilder: (_) => cubit.selectionModel!.ages
                                                    .map((String val) {
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
                                    SizedBox(
                                      width: 116,
                                    ),
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
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 25.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                cubit.months,
                                                style: const TextStyle(
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.bold,
                                                  color: AppColors.darkBrown,
                                                ),
                                              ),
                                              const Spacer(),
                                              PopupMenuButton(
                                                onSelected:
                                                    (String selectedValue) {
                                                  AppCubit.get(context)
                                                      .selectMonth(selectedValue);
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
                                                itemBuilder: (_) => cubit.selectionModel!.ages
                                                    .map((String val) {
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
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 25.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            cubit.size,
                                            style: const TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,
                                              color: AppColors.darkBrown,
                                            ),
                                          ),
                                          const Spacer(),
                                          PopupMenuButton(
                                            onSelected:
                                                (String selectedValue) {
                                              AppCubit.get(context)
                                                  .selectSize(selectedValue);
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
                                            itemBuilder: (_) => cubit.selectionModel!.size
                                                .map((String val) {
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
                                    SizedBox(
                                      width: 116,
                                    ),
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
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 25.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                cubit.breed,
                                                style: const TextStyle(
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.bold,
                                                  color: AppColors.darkBrown,
                                                ),
                                              ),
                                              const Spacer(),
                                              PopupMenuButton(
                                                onSelected:
                                                    (String selectedValue) {
                                                  AppCubit.get(context)
                                                      .selectBreed(selectedValue);
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
                                                itemBuilder: (_) => cubit.selectionModel!.breed
                                                    .map((String val) {
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
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 25.0),
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
                                                onSelected:
                                                    (String selectedValue) {
                                                  AppCubit.get(context)
                                                      .selectCategory(selectedValue);
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
                                                itemBuilder: (_) => categories
                                                    .map((String val) {
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
                                    SizedBox(
                                      width: 116,
                                    ),
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
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 25.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                cubit.breed,
                                                style: const TextStyle(
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.bold,
                                                  color: AppColors.darkBrown,
                                                ),
                                              ),
                                              const Spacer(),
                                              PopupMenuButton(
                                                onSelected:
                                                    (String selectedValue) {
                                                  AppCubit.get(context)
                                                      .selectBreed(selectedValue);
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
                                                itemBuilder: (_) => cubit.selectionModel!.breed
                                                    .map((String val) {
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
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 25.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                cubit.hairLength,
                                                style: const TextStyle(
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.bold,
                                                  color: AppColors.darkBrown,
                                                ),
                                              ),
                                              const Spacer(),
                                              PopupMenuButton(
                                                onSelected:
                                                    (String selectedValue) {
                                                  AppCubit.get(context)
                                                      .selectHairLength(selectedValue);
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
                                                itemBuilder: (_) => cubit.selectionModel!.hairLength
                                                    .map((String val) {
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
                                    SizedBox(
                                      width: 116,
                                    ),
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
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 25.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                cubit.careBehaviour,
                                                style: const TextStyle(
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.bold,
                                                  color: AppColors.darkBrown,
                                                ),
                                              ),
                                              const Spacer(),
                                              PopupMenuButton(
                                                onSelected:
                                                    (String selectedValue) {
                                                  AppCubit.get(context)
                                                      .selectCareBehaviour(selectedValue);
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
                                                itemBuilder: (_) => cubit.selectionModel!.behaviour
                                                    .map((String val) {
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
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 25.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                cubit.houseTraind,
                                                style: const TextStyle(
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.bold,
                                                  color: AppColors.darkBrown,
                                                ),
                                              ),
                                              const Spacer(),
                                              PopupMenuButton(
                                                onSelected:
                                                    (String selectedValue) {
                                                  AppCubit.get(context)
                                                      .selectHouseTraind(selectedValue);
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
                                                itemBuilder: (_) => cubit.selectionModel!.goodWith
                                                    .map((String val) {
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
                                    SizedBox(
                                      width: 116,
                                    ),
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
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 25.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                cubit.color,
                                                style: const TextStyle(
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.bold,
                                                  color: AppColors.darkBrown,
                                                ),
                                              ),
                                              const Spacer(),
                                              PopupMenuButton(
                                                onSelected:
                                                    (String selectedValue) {
                                                  AppCubit.get(context)
                                                      .selectColor(selectedValue);
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
                                                itemBuilder: (_) => cubit.selectionModel!.colors
                                                    .map((String val) {
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

  Widget selection(context, String label, List<String> list) => SizedBox(
    width: 429.65,
    height: 115.53,
    child: PhysicalModel(
      borderRadius: BorderRadius.circular(41),
      color: Colors.white,
      elevation: 12,
      shadowColor: Colors.black,
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 25.0),
        child: Row(
          children: [
            Text(
              label,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.darkBrown,
              ),
            ),
            const Spacer(),
            PopupMenuButton(
              onSelected:
                  (String selectedValue) {
                AppCubit.get(context)
                    .selectColor(selectedValue);
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
              itemBuilder: (_) => list
                  .map((String val) {
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
  );
}
