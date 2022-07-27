import 'package:flutter/material.dart';
import 'package:petology/widgets/footer.dart';
import 'package:petology/widgets/navigation_bar.dart';

class Adaption2Screen extends StatelessWidget {
  const Adaption2Screen({Key? key}) : super(key: key);

//ssssssss
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const WebNavigationBar(),
              Container(
                color: const Color(0xFF492F24),
                height: 1074,
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                        icon: const Icon(Icons.navigate_before_sharp),
                        color: Colors.black,
                        onPressed: () {},
                      ),
                    ),
                    const Image(
                      width: 1800,
                      height: 1000,
                      image: AssetImage(
                        'assets/images/dog.png',
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                        icon: const Icon(Icons.navigate_next_sharp),
                        color: Colors.black,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 100.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Else',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 81,
                        color: Color(0xFF492F24),
                      ),
                    ),
                    Row(
                      children: [
                        const Text(
                          'Share by:',
                          style: TextStyle(
                            fontSize: 50,
                            color: Color(0xFF492F24),
                          ),
                        ),
                        const Text(
                          'Rawan tarek',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 81,
                            color: Color(0xFF492F24),
                          ),
                        ),
                        const SizedBox(
                          width: 1000,
                        ),
                        CircleAvatar(
                          backgroundColor: const Color(0xFF492F24),
                          child: IconButton(
                            icon: const Icon(Icons.phone),
                            color: Colors.white,
                            onPressed: () {},
                          ),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.phone_enabled_sharp,
                            size: 30,
                          ),
                          color: const Color(0xFF492F24),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const Text(
                      'Domestic Short Hair  Fredericton, NB',
                      style: TextStyle(
                        fontSize: 50,
                        color: Color(0xFF492F24),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 60.0,
              ),
              Container(
                width: double.infinity,
                height: 162,
                color: const Color(0xFFF1F1F1),
                child: const Padding(
                  padding: EdgeInsets.only(
                    left: 100.0,
                    top: 80,
                  ),
                  child: Text(
                    'Adult.Female.Medium.Tabby(Brown/Chocolate)',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Color(0xFF492F24),
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'HOUSE-TRAINED \n Yes HEALTH Vaccinations up to date, spayed / neutered. GOOD IN A HOME WITH Other cats. REFERS A HOME WITHOUT Children.',
                    style: TextStyle(
                      fontSize:50.0 ,
                      color: Color(0xFF492F24)
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 162,
                    color: const Color(0xFFF1F1F1),
                    child:  Padding(
                      padding: const EdgeInsets.only(
                        left: 100.0,
                        top: 80,
                      ),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.notifications_none_rounded,
                            size: 100,
                            color: Color(0xFF492F24),
                          ),
                          Text(
                            'Petfinder recommends that you should always take reasonable \n \n security steps before making adabtion.',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 50,
                              color: Color(0xFF492F24),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100.0),
                child: Column(
                 children: const [
                   Text('Hi ,Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea.',
                     style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 50,
                       color: Color(0xFF492F24),
                     ),
                   ),
                 ],
                ),
              ),
              const Footer(),
            ],
          ),

        ),
      ),
    );
  }
}
