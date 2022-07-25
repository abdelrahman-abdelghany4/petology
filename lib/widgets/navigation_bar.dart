import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        color: Color(0xFF492F24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
              'assets/images/logo.svg',
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'About us',
                style: TextStyle(
                  color: Color(0xffC9C9C9),
                  fontSize: 30,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Categories',
                style: TextStyle(
                  color: Color(0xffC9C9C9),
                  fontSize: 30,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Services',
                style: TextStyle(
                  color: Color(0xffC9C9C9),
                  fontSize: 30,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Request',
                style: TextStyle(
                  color: Color(0xffC9C9C9),
                  fontSize: 30,
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {},
              minWidth: 208,
              height: 62,
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
            MaterialButton(
              onPressed: () {},
              minWidth: 208,
              height: 62,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                  side: BorderSide(
                    color: Color(0xffFFE3C5),
                    width: 4
                  )),
              child: Text(
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
