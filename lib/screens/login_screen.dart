import 'package:flutter/material.dart';
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const WebNavigationBar(),
              const SizedBox(
                height: 400,
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
                        color: Color(0xFF492F24),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28),
                            side:
                                BorderSide(color: Color(0XFFFFE3C5), width: 2)),
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            color: Color(0xFFB6B6B6),
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
                            color: Color(0xFF492F24),
                          ),
                          Text(
                            'or',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 437.85,
                            height: 1,
                            color: Color(0xFF492F24),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
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

