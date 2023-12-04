// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ProgramDetail {
  String imgUrl;
  String title;
  String subTitle;
  String date;
  String time;
  String location;
  String detailedText;

  //List<Activity> activities;

  ProgramDetail({
    required this.imgUrl,
    required this.title,
    required this.subTitle,
    required this.date,
    required this.time,
    required this.location,
    required this.detailedText,
    // required this.activities,
  });

  /* 
 Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tittle': tittle,
      'subTitle': subTitle,
      'imgUrl': imgUrl,
      'date': date,
      'time': time,
    };
  }

  factory ProgramDetail.fromMap(Map<String, dynamic> map) {
    return ProgramDetail(
      tittle: map['tittle'] as String,
      subTitle: map['subTitle'] as String,
      imgUrl: map['imgUrl'] as String,
      date: map['date'] as String,
      time: map['time'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProgramDetail.fromJson(String source) =>
      ProgramDetail.fromMap(json.decode(source) as Map<String, dynamic>);
*/
}

class Activity {}

List<ProgramDetail> programDetails = [
  ProgramDetail(
      imgUrl: 'assets/images/flyers/fly1.jpg',
      title: 'Mega Yout Watch Night',
      subTitle: 'All servcie',
      date: 'Friday Nov. 08 2023',
      time: '09:00am',
      location: 'ESA Pavilion',
      detailedText: ''
      //activities: [],
      ),
  ProgramDetail(
      imgUrl: 'assets/images/flyers/fly2.jpg',
      title: 'Ladies & Gents Night',
      subTitle: 'Evening servcie',
      date: 'Wednesday Nov. 08 2023',
      time: '06:30pm',
      location: 'SRC Car Park',
      detailedText: ''

      // activities: [],
      ),
  ProgramDetail(
      imgUrl: 'assets/images/flyers/fly3.jpg',
      title: 'Carols Service',
      subTitle: 'Afternoon servcie',
      date: 'Saturday Nov. 08 2023',
      time: '03:00pm',
      location: 'Ceremonial Grounds',
      detailedText: ''

      //activities: [],
      ),
  ProgramDetail(
      imgUrl: 'assets/images/flyers/fly1.jpg',
      title: 'Mega Yout Watch Night',
      subTitle: 'All servcie',
      date: 'Friday Nov. 08 2023',
      time: '09:00am',
      location: 'ESA Pavilion',
      detailedText: ''

      //activities: [],
      ),
];
