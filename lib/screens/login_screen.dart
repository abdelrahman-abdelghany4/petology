import 'package:flutter/material.dart';
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
              WebNavigationBar(),
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
                      Text(
                        'Login',
                        style: TextStyle(fontSize: 54),
                      ),
                      const SizedBox(height: 55,),
                      defaultFormFIeld(controller: emailController, label: 'email',keyboardType:TextInputType.emailAddress),
                      const SizedBox(height: 41,),
                      defaultFormFIeld(controller: passwordController,label: 'password',keyboardType:TextInputType.visiblePassword),
                      const SizedBox(height: 88,),
                      MaterialButton(
                        onPressed: () {},
                        minWidth: 975.7,
                        height: 134.85,
                        color: Color(0xFF492F24),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28),
                            side: BorderSide(
                                color: Color(0XFFFFE3C5),
                                width: 2
                            )),
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            color: Color(0xFFB6B6B6),
                            fontSize: 30,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end, children: [
                          Text('Forget password?')
                        ],
                      ),
                      const SizedBox(height: 66,),
                      Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                        children: [
                          Container(
                            width: 437.85,
                            height: 1,
                            color: Color(0xFF492F24),
                          ),
                          Text('or',style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          ),),
                          Container(
                            width: 437.85,
                            height: 1,
                            color: Color(0xFF492F24),
                          )

                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class defaultFormFIeld extends StatelessWidget {
  TextEditingController controller;
  TextInputType keyboardType;
  ValueChanged<String>? onSubmit;
  ValueChanged<String>? onChange;
  VoidCallback? onTap;
  bool isPassword = false;
  FormFieldValidator<String>? validate;
  String? label;
  IconData? prefix;
  IconData? suffix;
  VoidCallback? suffixPressed;
  bool isClickable = true;

   defaultFormFIeld({
    Key? key,
     required this.controller,
    required this.keyboardType,
    this.onSubmit,
    this.onChange,
    this. onTap,
    bool isPassword = false,
    this. validate,
    required String label,
    this. prefix,
    this.suffix,
    this. suffixPressed,
    bool isClickable = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 975,
      decoration: BoxDecoration(
          color:Colors.white, borderRadius: BorderRadius.circular(41),
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: isPassword,
        enabled: isClickable,
        onFieldSubmitted: onSubmit,
        onChanged: onChange,
        onTap: onTap,
        validator: validate,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(fontSize: 17),
          // prefixIcon: Icon(
          //   prefix,
          // ),
          suffixIcon: suffix != null
              ? IconButton(
                  onPressed: suffixPressed,
                  icon: Icon(
                    suffix,
                  ),
                )
              : null,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        ),
      ),
    );
  }
}
