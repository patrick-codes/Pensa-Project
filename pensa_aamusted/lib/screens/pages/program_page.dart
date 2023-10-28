import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:pensa_aamusted/constants/color_constants.dart';
import 'package:pensa_aamusted/model/programdetail_model.dart';

class ProgramPage extends StatefulWidget {
  //const ProgramPage({super.key, this.programDetail});

  final ProgramDetail programDetail;

  const ProgramPage({super.key, required this.programDetail});

  @override
  State<ProgramPage> createState() => _ProgramPageState();
}

class _ProgramPageState extends State<ProgramPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryC,
      body: Stack(
        children: [
          Opacity(
            opacity: 0.4,
            child: Image.asset(
              widget.programDetail.imgUrl,
              height: 280,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 25,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            LineIcons.arrowLeft,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Icon(
                            LineIcons.heart,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 60),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              widget.programDetail.imgUrl,
                              height: 200,
                              width: 180,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 18, top: 60),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 8,
                              ),
                            ],
                          ),
                          child: const Icon(
                            Icons.play_arrow_rounded,
                            color: kPrimaryC,
                            size: 35,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 2),
                  // const ProgramPageButtons(),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.programDetail.title,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 3),
                            Row(
                              children: [
                                const Icon(
                                  LineIcons.calendar,
                                  color: Colors.white54,
                                  size: 16,
                                ),
                                Text(
                                  widget.programDetail.date,
                                  style: const TextStyle(
                                    color: Colors.white54,
                                    fontSize: 10,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Row(
                                  children: [
                                    const Icon(
                                      LineIcons.clock,
                                      color: Colors.white54,
                                      size: 16,
                                    ),
                                    //SizedBox(width: 2),
                                    Container(
                                      height: 15,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        color: Colors.orange,
                                        borderRadius: BorderRadius.circular(3),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Center(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  widget.programDetail.time,
                                                  style: const TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
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
                                  widget.programDetail.location,
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
                        const SizedBox(height: 12),
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Program Details",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          "The church usually meets thrice a week at the Local Assembly level for Bible Teachings/Studies on Wednesdays, Prayer and Holy Spirit Baptism Services on Fridays and Congregational Worship on Sundays. As part of efforts to promote good marriage and family life, no church meetings or activities are scheduled for specific weeks known as “Free Weeks.” During these weeks, members are encouraged to stay at home with their families and hold fellowship together. The Free Weeks are meant to enhance personal fellowship as well as family or household worship and family unity/bond. The wife of the Youth Ministry Director of The Church of Pentecost, Mrs. Priscilla Hagan, offered valuable advice to young people, encouraging them to avoid greediness and be content with their lives. The church usually meets thrice a week at the Local Assembly level for Bible Teachings The church usually meets thrice a week at the Local Assembly level for Bible Teachings.",
                          style: TextStyle(
                            letterSpacing: 1,
                            wordSpacing: 1,
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
