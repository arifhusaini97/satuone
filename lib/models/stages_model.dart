import 'dart:math';

Random random = Random();
List names = [
  "Badrul Amin Jaafar",
  "Azzan Amin",
  "Muhammad Ridhzuan Abdul Rahim",
  "Mohd Sharil Iqmal Mohd Sabri",
  "Nur Arif Husaini Norwaza",
  "Muhammad Ammar Aziz",
  "Muhammad Ridzauddin Ridzwan",
  "Muhammad Izzat Isa",
  "Muhammad Hilmi",
  "Muhammad Haniffudin",
  "Muhammad Nukman",
];

List nicknames = [
  "@bad",
  "@azzan",
  "@iwanPro",
  "@sharil",
  "@arifhusaini97",
  "@mey",
  "@ridzauddin",
  "@izzat",
  "@hilmi",
  "@haniff",
  "@nukman",
];

String image0 = "assets/images/gallery/gallery_0.jpg";
String image1 = "assets/images/gallery/gallery_1.jpg";
String image2 = "assets/images/gallery/gallery_2.jpg";
String image3 = "assets/images/gallery/gallery_3.jpg";
String image4 = "assets/images/gallery/gallery_4.jpg";
String image5 = "assets/images/gallery/gallery_5.jpg";
String image6 = "assets/images/gallery/gallery_6.jpg";
String image7 = "assets/images/gallery/gallery_7.jpg";
String image8 = "assets/images/gallery/gallery_8.jpg";
String image9 = "assets/images/gallery/gallery_9.jpg";
String image10 = "assets/images/event_dp_profile/event_2.jpg";
String image11 = "assets/images/organization_dp_profile/logo_mpp_uitm.jpg";

List<String> post0 = [image0];
List<String> post1 = [image1, image2];
List<String> post2 = [image2];
List<String> post3 = [image3, image2, image1];
List<String> post4 = [image4];
List<String> post5 = [image9, image8];
List<String> post6 = [image7];
List<String> post7 = [image6, image5, image4];
List<String> post8 = [image3];
List<String> post9 = [image2, image1];

List<String> post10 = [image10];

List<List<String>> images = [
  post0,
  post1,
  post2,
  post3,
  post4,
  post5,
  post6,
  post7,
  post8,
  post9,
  post10,
];

// List speaks = List.generate(
//   13,
//   (index) => {
//     "name": names[random.nextInt(10)],
//     "dp": "assets/images/gallery/gallery_${random.nextInt(10)}.jpg",
//     "time": "${random.nextInt(50)} min",
//     "img": images[random.nextInt(10)],
//     "text": "Inilah permulaannya....",
//     "type": 2,
//   },
// );

List speaks = [
  {
    "name": names[0],
    "nickname": nicknames[0],
    "dp": image0,
    "time": "${random.nextInt(50)} min",
    "img": null,
    "text": "Bersatu kita teguh, bercerai kita roboh. Ayuh kita bersatu!",
    "totComment": "12.1M",
    "totRecycle": "1k",
    "totReact": "10k",
    "totConfirm": null,
    "totMaybe": null,
    "type": 1,
  },
  {
    "name": names[1],
    "nickname": nicknames[1],
    "dp": image1,
    "time": "${random.nextInt(50)} min",
    "img": images[random.nextInt(10)],
    "text": "Terjumpa kawan lama tadi...",
    "totComment": "1k",
    "totRecycle": "500",
    "totReact": "5.2k",
    "totConfirm": null,
    "totMaybe": null,
    "type": 2,
  },
  {
    "name": "Majlis Perwakilan Pelajar UiTM N9",
    "nickname": "@mppn9",
    "dp": image11,
    "time": "${random.nextInt(50)} min",
    "img": images[10],
    "text": "Mari bersama-sama memeriahkan lagi program ini. Semua dijemput hadir!",
    "totComment": "140.2k",
    "totRecycle": "112.2k",
    "totReact": "122.1k",
    "totConfirm": "101.4k Cf",
    "totMaybe": "100.1M Mb",
    "type": 3,
  },
  
  {
    "name": names[3],
    "nickname": nicknames[3],
    "dp": image3,
    "time": "${random.nextInt(50)} min",
    "img": images[random.nextInt(10)],
    "text": "Meskipun jauh, kita tetap dekat di hati,",
    "totComment": "2",
    "totRecycle": "0",
    "totReact": "4",
    "totConfirm": null,
    "totMaybe": null,
    "type": 2,
  },
  
  {
    "name": names[4],
    "nickname": nicknames[4],
    "dp": image4,
    "time": "${random.nextInt(50)} min",
    "img": images[random.nextInt(10)],
    "text": "Inilah permulaannya....",
    "totComment": "221.1k",
    "totRecycle": "62k",
    "totReact": "321.1M",
    "totConfirm": null,
    "totMaybe": null,
    "type": 2,
  },
  
  {
    "name": names[5],
    "nickname": nicknames[5],
    "dp": image5,
    "time": "${random.nextInt(50)} min",
    "img": images[random.nextInt(10)],
    "text": null,
    "totComment": "11",
    "totRecycle": "2",
    "totReact": "5",
    "totConfirm": null,
    "totMaybe": null,
    "type": 2,
  },
  
  {
    "name": names[6],
    "nickname": nicknames[6],
    "dp": image6,
    "time": "${random.nextInt(50)} min",
    "img": images[random.nextInt(10)],
    "text": null,
    "totComment": "4",
    "totRecycle": "2",
    "totReact": "30",
    "totConfirm": null,
    "totMaybe": null,
    "type": 2,
  },
  
  {
    "name": names[7],
    "nickname": nicknames[7],
    "dp": image7,
    "time": "${random.nextInt(50)} min",
    "img": images[random.nextInt(10)],
    "text": null,
    "totComment": "1",
    "totRecycle": "2",
    "totReact": "67",
    "totConfirm": null,
    "totMaybe": null,
    "type": 2,
  },
  
  {
    "name": names[8],
    "nickname": nicknames[8],
    "dp": image8,
    "time": "${random.nextInt(50)} min",
    "img": images[random.nextInt(10)],
    "text": null,
    "totComment": "7",
    "totRecycle": "1",
    "totReact": "100",
    "totConfirm": null,
    "totMaybe": null,
    "type": 2,
  },
  {
    "name": names[9],
    "nickname": nicknames[9],
    "dp": image9,
    "time": "${random.nextInt(50)} min",
    "img": images[random.nextInt(10)],
    "text": null,
    "totComment": "14",
    "totRecycle": "5",
    "totReact": "80",
    "totConfirm": null,
    "totMaybe": null,
    "type": 2,
  },
];
