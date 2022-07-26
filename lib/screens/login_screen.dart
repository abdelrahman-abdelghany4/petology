import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petology/themes/colors.dart';
import 'package:petology/widgets/default_form_field.dart';
import 'package:petology/widgets/footer.dart';
import 'package:petology/widgets/navigation_bar.dart';

class LoginScreen extends StatelessWidget {
  @override

  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const WebNavigationBar(),
              const SizedBox(
                height: 400,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 1540),
                    child: SvgPicture.asset('assets/images/dog.svg'),
                  ),
                  Container(
                    height: 1211,
                    width: 1146,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(88)),
                    child: Padding(
                      padding: const EdgeInsets.all(82.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Login',
                            style: TextStyle(fontSize: 54),
                          ),
                          const SizedBox(
                            height: 55,
                          ),
                          defaultFormFIeld(
                              controller: emailController,
                              label: 'email',
                              keyboardType: TextInputType.emailAddress),
                          const SizedBox(
                            height: 41,
                          ),
                          defaultFormFIeld(
                              controller: passwordController,
                              label: 'password',
                              keyboardType: TextInputType.visiblePassword),
                          const SizedBox(
                            height: 88,
                          ),
                          MaterialButton(
                            onPressed: () {},
                            minWidth: 975.7,
                            height: 134.85,
                            color: AppColors.darkBrown,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(28),
                                side: BorderSide(
                                    color: Color(0XFFFFE3C5), width: 2)),
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                color: AppColors.darkSilver,
                                fontSize: 30,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [Text('Forget password?')],
                          ),
                          const SizedBox(
                            height: 66,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 437.85,
                                height: 1,
                                color: AppColors.darkBrown,
                              ),
                              Text(
                                'or',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              Container(
                                width: 437.85,
                                height: 1,
                                color: AppColors.darkBrown,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 97.3,
                          ),
                          Row(
                            children: [
                              MaterialButton(
                                onPressed: () {},
                                minWidth: 426.67,
                                height: 104.19,
                                color: Color(0xFF2F4582),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(44),
                                    side: BorderSide(
                                        color: Color(0XFF707070), width: 2)),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/images/facebook.svg'),
                                    const SizedBox(
                                      width: 58,
                                    ),
                                    Text(
                                      'Facebook',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 106.1,
                              ),
                              MaterialButton(
                                onPressed: () {},
                                minWidth: 426.67,
                                height: 104.19,
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(44),
                                    side: BorderSide(
                                        color: Color(0XFF707070), width: 2)),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/images/google.svg',
                                      width: 59.62,
                                      height: 52.92,
                                    ),
                                    const SizedBox(
                                      width: 58,
                                    ),
                                    Text(
                                      'Google',
                                      style: TextStyle(
                                        color: Color(0xff180701),
                                        fontSize: 30,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 55,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Didn\'t have an account?',
                                style: TextStyle(
                                    color: Color(0xFF492F24),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text('sign up',
                                      style: TextStyle(
                                          color: Color(0xFF492F24),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              const Footer(),
              // Stack(
              //   children: [
              //     SvgPicture.asset('assets/images/footer.svg'),
              //     Padding(
              //       padding: const EdgeInsets.only(
              //         right: 600,
              //         left: 120,
              //         top: 120,
              //         bottom: 89,
              //       ),
              //       child: Row(
              //         children: [
              //           Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Text(
              //                 'For Any Questions',
              //                 style: TextStyle(
              //                   fontSize: 48.5,
              //                   color: Color(0xffFFE3C5),
              //                 ),
              //               ),
              //               SizedBox(
              //                 height: 60,
              //               ),
              //               Row(
              //                 children: [
              //                   Icon(
              //                     Icons.email,
              //                     size: 60,
              //                     color: Color(0xffAE957B),
              //                   ),
              //                   SizedBox(
              //                     width: 43,
              //                   ),
              //                   TextButton(
              //                     onPressed: () {},
              //                     child: Text(
              //                       'Email@petology.com',
              //                       style: TextStyle(
              //                         fontSize: 38,
              //                         color: Color(0xffAE957B),
              //                       ),
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //               SizedBox(
              //                 height: 60,
              //               ),
              //               Row(
              //                 children: [
              //                   Icon(
              //                     Icons.phone,
              //                     size: 60,
              //                     color: Color(0xffAE957B),
              //                   ),
              //                   SizedBox(
              //                     width: 43,
              //                   ),
              //                   TextButton(
              //                     onPressed: () {},
              //                     child: Text(
              //                       '(+2) 0123456789',
              //                       style: TextStyle(
              //                         fontSize: 38,
              //                         color: Color(0xffAE957B),
              //                       ),
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ],
              //           ),
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
