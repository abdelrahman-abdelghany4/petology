import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petology/themes/colors.dart';
import 'package:petology/widgets/default_form_field.dart';
import 'package:petology/widgets/footer.dart';
import 'package:petology/widgets/navigation_bar.dart';

class HelpScreen extends StatelessWidget {
  var categoryController = TextEditingController();
  var locationController = TextEditingController();
  var phoneController = TextEditingController();

  HelpScreen({Key? key}) : super(key: key);
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
                                defaultFormFIeld(
                                  controller: categoryController,
                                  label: 'Category',
                                  keyboardType:
                                  TextInputType.streetAddress,
                                  validate: (String? value) {
                                    if (value!.isEmpty) {
                                      return 'category must not be empty';
                                    }
                                    return null;
                                  },
                                  suffix: Icons.keyboard_arrow_down,
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
                                  controller: locationController,
                                  label: 'Location',
                                  keyboardType:
                                  TextInputType.streetAddress,
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
                                  controller: phoneController,
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
                              onPressed: () {},
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
    );
  }
}
