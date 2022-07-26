import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petology/themes/colors.dart';

class WebNavigationBar extends StatelessWidget {
  const WebNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size(
        double.infinity,
        142,
      ),
      child: Container(
        height: 142,
        color: AppColors.darkBrown,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
              'assets/images/logo.svg',
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'About us',
                style: TextStyle(
                  color: AppColors.lightSilver,
                  fontSize: 30,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Categories',
                style: TextStyle(
                  color: AppColors.lightSilver,
                  fontSize: 30,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Services',
                style: TextStyle(
                  color: AppColors.lightSilver,
                  fontSize: 30,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Request',
                style: TextStyle(
                  color: AppColors.lightSilver,
                  fontSize: 30,
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {},
              minWidth: 208,
              height: 62,
              color: AppColors.darkBrown,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                  side: const BorderSide(
                    color: Color(0XFFFFE3C5),
                    width: 2
                  )),
              child: const Text(
                'Sign up',
                style: TextStyle(
                  color: AppColors.darkSilver,
                  fontSize: 30,
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {},
              minWidth: 208,
              height: 62,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                  side: const BorderSide(
                    color: AppColors.lightBrown,
                    width: 4
                  )),
              child: const Text(
                'Sign up',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
