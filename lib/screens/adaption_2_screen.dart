import 'package:flutter/material.dart';
import 'package:petology/widgets/navigation_bar.dart';

class Adaption2Screen extends StatelessWidget {
  const Adaption2Screen({Key? key}) : super(key: key);
//ssssssss
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
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
              Container(
                width: double.infinity,
                height: 1000,
                child: Padding(
                  padding: const EdgeInsets.only(left:100.0,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Else',
                        style: TextStyle(
                          fontWeight:FontWeight.bold ,
                          fontSize:81 ,
                          color: Color(0XFF492F24),
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            'Share by:',
                            style: TextStyle(
                              fontSize:50 ,
                              color: Color(0XFF492F24),
                            ),
                          ),
                          const Text(
                            'Rawan tarek',
                            style: TextStyle(
                              fontWeight:FontWeight.bold ,
                              fontSize:81 ,
                              color: Color(0XFF492F24),
                            ),
                          ),
                          const SizedBox(width: 1000,),
                          CircleAvatar(
                            backgroundColor: const Color(0XFF492F24),
                            child: IconButton(
                              icon: const Icon(Icons.phone),
                              color: Colors.white,
                              onPressed: () {},
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.phone_enabled_sharp,
                              size: 30,
                            ),
                            color: const Color(0XFF492F24),
                            onPressed: () {},
                          ),

                        ],
                      ),
                      const Text(
                        'Domestic Short Hair  Fredericton, NB',
                        style: TextStyle(
                          fontSize:50 ,
                          color: Color(0XFF492F24),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 162,
                        color:  Colors.redAccent,
                        child: const Center(
                          child:Text(
                            'Adult.Female.Medium.Tabby(Brown/Chocolate)',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize:50 ,
                              color: Color(0XFF492F24),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ),

            ],
          ),
        ),
      ),
    );
  }
}
