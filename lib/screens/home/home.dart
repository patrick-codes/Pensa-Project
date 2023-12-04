import 'package:flutter/material.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:marquee/marquee.dart';
import 'package:pensa_aamusted/constants/color_constants.dart';
import 'package:pensa_aamusted/custom%20widgets/drawer/nav_drawer.dart';
import 'package:pensa_aamusted/model/programdetail_model.dart';
import '../pages/program_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

final _controller = PageController();

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget> _widgetOptions = [
    const MyHomePage(),
    const MyHomePage(),
    const MyHomePage(),
    const MyHomePage(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }

  List<CarouselItem> itemList = [
    CarouselItem(
      image: const AssetImage("assets/images/img8.jpg"),
      title: 'LORD’S SUPPER WEEKS / SUNDAYS',
      titleTextStyle: const TextStyle(
        fontSize: 12,
        color: Colors.white,
      ),
      leftSubtitle: '\$51,046 in prizes',
      rightSubtitle: '4882 participants',
      rightSubtitleTextStyle: const TextStyle(
        fontSize: 12,
        color: Colors.white,
      ),
      onImageTap: (i) {},
    ),
    CarouselItem(
      image: const AssetImage("assets/images/img7.jpg"),
      title: 'OFFICERS’ APPRECIATION DAY',
      titleTextStyle: const TextStyle(
        fontSize: 12,
        color: Colors.white,
      ),
      leftSubtitle: '11 Sept 2023',
      rightSubtitle: 'v1.0.0',
      onImageTap: (i) {},
    ),
    CarouselItem(
      image: const AssetImage("assets/images/img9.jpg"),
      title: ' PENSA INTERNATIONAL MISSIONS',
      titleTextStyle: const TextStyle(
        fontSize: 12,
        color: Colors.white,
      ),
      leftSubtitle: '20 Oct 2023',
      rightSubtitle: 'v1.0.0',
      onImageTap: (i) {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: AppBar(
        scrolledUnderElevation: 2,
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "PENSA AAMUSTED",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            // SizedBox(width: 5),
            Row(
              children: [
                Badge(
                  label: Text("4"),
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.notifications_active_outlined,
                    size: 28,
                  ),
                ),
                SizedBox(width: 5),
                /*GestureDetector(
                  onTap: () {
                    AuthenticationRepository.instance.logout();
                  },
                  child: const CircleAvatar(
                    foregroundColor: Colors.grey,
                    //backgroundColor: Colors.grey,
                    radius: 16,
                    child: Center(
                      child: Icon(Icons.person),
                    ),
                  ),
                ),
             */
              ],
            ),
          ],
        ),
        /*leading: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.menu_rounded,
              size: 30,
            ),
            SizedBox(width: 5),
          ],
        ),
      */
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 15,
              color: Colors.black.withOpacity(0.1),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
          child: GNav(
            rippleColor: Colors.grey[300]!,
            hoverColor: Colors.grey[100]!,
            activeColor: Colors.yellow,
            iconSize: 22,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: const Duration(milliseconds: 300),
            tabBackgroundColor: kPrimaryC,
            tabBorderRadius: 13.0,
            color: Colors.black,
            tabs: const [
              GButton(
                icon: LineIcons.home,
                text: 'Home',
              ),
              GButton(
                icon: LineIcons.church,
                text: 'Service',
              ),
              GButton(
                icon: LineIcons.bible,
                text: 'Sermon',
              ),
              GButton(
                icon: LineIcons.file,
                text: 'Files',
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              _onItemTapped(index);
            },
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 15),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Hello..Welcome!",
                        ),
                        SizedBox(width: 3),
                        FaIcon(
                          FontAwesomeIcons.handsClapping,
                          color: Colors.orange,
                        )
                      ],
                    ),
                    const SizedBox(height: 10),

                    //Search Bar
                    SizedBox(
                      height: 40,
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 30,
                            width: 4,
                            color: kPrimaryC,
                          ),
                          const SizedBox(width: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Text(
                                  overflow: TextOverflow.ellipsis,
                                  "search.....",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.grey.withOpacity(0.5),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 90),
                          /* const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.microphone,
                                size: 18,
                              ),
                            ],
                          ),
                        */
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
                //Marquee moving text
                Container(
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: kPrimaryC,
                  ),
                  child: Marquee(
                    startAfter: const Duration(seconds: 2),
                    decelerationCurve: Curves.easeOut,
                    accelerationCurve: Curves.linear,
                    text:
                        "1 John 4:7 NIV  ---  Dear friends, let us love one another, for love comes from God. Everyone who loves has been born of God and knows God.  ---  ",
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 12),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("News & Events"),
                    Text(
                      "view all",
                      style: TextStyle(
                        color: kPrimaryC,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  child: Center(
                    child: Column(
                      children: [
                        Column(
                          children: [
                            CustomCarouselSlider(
                              items: itemList,
                              height: 180,
                              subHeight: 50,
                              width: MediaQuery.of(context).size.width * .95,
                              autoplay: true,
                              autoplayDuration: const Duration(seconds: 5),
                              animationDuration:
                                  const Duration(milliseconds: 500),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        /*Column(
                          children: [
                            const Text('Show Only Customize Indicators'),
                            CustomCarouselSlider(
                              items: itemList,
                              height: 150,
                              subHeight: 50,
                              width: MediaQuery.of(context).size.width * .9,
                              autoplay: false,
                              showText: false,
                              showSubBackground: false,
                              indicatorShape: BoxShape.rectangle,
                              selectedDotColor: Colors.red,
                              unselectedDotColor: Colors.white,
                            ),
                          ],
                        ),
                        */
                      ],
                    ),
                  ),
                ),
                /*const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Upcoming Programs"),
                    Text(
                      "view all",
                      style: TextStyle(
                        color: kPrimaryC,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                //Programs Column Slider
                Column(
                  children: [
                    SizedBox(
                      height: 150,
                      child: PageView(
                        controller: _controller,
                        children: const [
                          ColumnSlider(),
                          ColumnSlider(),
                          ColumnSlider(),
                          ColumnSlider(),
                        ],
                      ),
                    ),
                    SmoothPageIndicator(
                      //axisDirection: Axis.vertical,
                      controller: _controller,
                      count: 4,
                      //ExpandingDotsEffect
                      effect: const SwapEffect(
                        activeDotColor: kPrimaryC,
                        dotHeight: 5,
                        dotWidth: 5,
                        spacing: 5,
                      ),
                    )
                  ],
                ),
                //const ColumnSlider(),
              */
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Upcoming Programs"),
                    Text(
                      "view all",
                      style: TextStyle(
                        color: kPrimaryC,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),
                //Upcoming Program cards
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: programDetails.length,
                    itemBuilder: (BuildContext context, int index) {
                      ProgramDetail programs = programDetails[index];
                      return GestureDetector(
                        onTap: () {
                          Get.to(
                            () => ProgramPage(
                              programDetail: programs,
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            // for (int i = 1; i < 4; i++)
                            Container(
                              width: 190,
                              height: 248,
                              margin: const EdgeInsets.only(left: 5),
                              decoration: BoxDecoration(
                                color: kPrimaryC,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 6,
                                    spreadRadius: 2,
                                    color: Colors.grey.withOpacity(0.5),
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    child: Image.asset(
                                      programs.imgUrl,
                                      height: 150,
                                      width: 200,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          programs.title,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        const SizedBox(height: 3),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              programs.date,
                                              style: const TextStyle(
                                                color: Colors.white54,
                                                fontSize: 12,
                                              ),
                                            ),
                                            Text(
                                              programs.time,
                                              style: const TextStyle(
                                                color: Colors.white54,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 5),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.location_pin,
                                              color: Colors.yellow,
                                              size: 20,
                                            ),
                                            const SizedBox(width: 0.5),
                                            Text(
                                              programs.location,
                                              style: const TextStyle(
                                                fontSize: 12,
                                                color: Colors.white54,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );

                      /* Row(
                        children: [
                         // for (int i = 1; i < 4; i++)
                            Container(
                              width: 190,
                              height: 248,
                              margin: const EdgeInsets.only(left: 5),
                              decoration: BoxDecoration(
                                color: kPrimaryC,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 6,
                                    spreadRadius: 2,
                                    color: Colors.grey.withOpacity(0.5),
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    child: Image.asset(
                                      "assets/images/flyers/fly1.jpg",
                                      height: 150,
                                      width: 200,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  const Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 5),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Mega Youth Watch Night",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        SizedBox(height: 3),
                                        Text(
                                          "Friday Nov. 08, 2023",
                                          style: TextStyle(
                                            color: Colors.white54,
                                            fontSize: 12,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.location_pin,
                                              color: Colors.yellow,
                                              size: 20,
                                            ),
                                            SizedBox(width: 0.5),
                                            Text(
                                              "ESA Pavilion",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.white54,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                    */
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
