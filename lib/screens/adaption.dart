import 'package:flutter/material.dart';
import 'package:petology/widgets/footer.dart';
import 'package:petology/widgets/navigation_bar.dart';

class AdaptionScreen extends StatelessWidget {
  const AdaptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/background.png',
              height: 3073,
              width: double.infinity,
            ),
            Column(
              children:  [
                WebNavigationBar(),

                Footer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
