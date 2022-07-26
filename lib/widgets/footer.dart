import 'package:flutter/material.dart';
import 'package:petology/themes/colors.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 435,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/footer.png'),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
            top: 80,
            left: 205
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'For Any Questions',
                  style: TextStyle(
                    fontSize: 47,
                    color: AppColors.lightBrown,
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.email,
                      size: 60,
                      color: AppColors.medBrown,
                    ),
                    SizedBox(
                      width: 43,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Email@petology.com',
                        style: TextStyle(
                          fontSize: 36,
                          color: AppColors.medBrown,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                      size: 60,
                      color: AppColors.medBrown,
                    ),
                    SizedBox(
                      width: 43,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        '(+2) 0123456789',
                        style: TextStyle(
                          fontSize: 36,
                          color: AppColors.medBrown,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 115,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'We are waiting you',
                  style: TextStyle(
                    fontSize: 47,
                    color: AppColors.lightBrown,
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 60,
                      color: AppColors.medBrown,
                    ),
                    SizedBox(
                      width: 43,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'First settlement/Cairo',
                        style: TextStyle(
                          fontSize: 36,
                          color: AppColors.medBrown,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 60,
                      color: AppColors.medBrown,
                    ),
                    SizedBox(
                      width: 43,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Cairo/Egypt',
                        style: TextStyle(
                          fontSize: 36,
                          color: AppColors.medBrown,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
