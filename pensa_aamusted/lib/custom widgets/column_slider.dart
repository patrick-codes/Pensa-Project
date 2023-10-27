import 'package:flutter/material.dart';

class ColumnSlider extends StatefulWidget {
  const ColumnSlider({super.key});

  @override
  State<ColumnSlider> createState() => _ColumnSliderState();
}

class _ColumnSliderState extends State<ColumnSlider> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        //margin: const EdgeInsets.symmetric(horizontal: 10),
        height: 120,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 243, 242, 242),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Wonders of Worship",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 5),
                Expanded(
                  child: Text(
                    //maxLines: 8,
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.center,
                    softWrap: true,
                    "A holistically empowered"
                    "\nyouth living for Christ"
                    "\nJesus everywhere, who shall"
                    "\nbecome responsible Christian"
                    "\nadults committed to"
                    "\nChurch and Nation Building."
                    "\nfor Christ Jesus everywhere,",
                    style: TextStyle(fontSize: 10),
                  ),
                )
              ],
            ),
            SizedBox(width: 3),
            Column(
              children: [
                Container(
                  height: 125,
                  width: 150,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/fly1.jpg"),
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
