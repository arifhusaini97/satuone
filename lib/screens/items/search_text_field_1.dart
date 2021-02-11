import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

final _searchFieldController = TextEditingController(text: '');

class SearchTextField1 extends StatefulWidget {
  SearchTextField1();

  @override
  _SearchTextField1State createState() => _SearchTextField1State();
}

class _SearchTextField1State extends State<SearchTextField1> {
  var result = 'Search';

  // _launchURL(String result) async {
  //   String url = result;
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  Future _scanQR() async {
    try {
      var qrResult = await BarcodeScanner.scan();
      setState(() {
        result = qrResult;
        launch(result);
      });
    } on PlatformException catch (ex) {
      if (ex.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          result = 'Camera permission was denied';
        });
      } else {
        setState(() {
          result = 'Unexpected Error $ex';
        });
      }
    } on FormatException {
      setState(() {
        result = 'You pressed the back button before scanning anything';
      });
    } catch (ex) {
      setState(() {
        result = 'Unexpected Error $ex';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.all(
              Radius.elliptical(5.0, 5.0),
            ),
            child: TextField(
              controller: _searchFieldController,
              cursorColor: Colors.red,
              decoration: InputDecoration(
                hintText: result,
                // prefix: Material(
                //   elevation: 0.0,
                //   borderRadius: BorderRadius.all(
                //     Radius.elliptical(5.0, 5.0),
                //   ),
                //   child: PopUpMenuButtonFilter(),
                // ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 15.0,
                ),
                border: InputBorder.none,
                suffixIcon: Material(
                  elevation: 0.0,
                  borderRadius: BorderRadius.all(
                    Radius.elliptical(5.0, 5.0),
                  ),
                  child: InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 25.0,
                    ),
                  ),
                ),
                prefixIcon: Material(
                  elevation: 0.0,
                  borderRadius: BorderRadius.all(
                    Radius.elliptical(5.0, 5.0),
                  ),
                  child: InkWell(
                    onTap: _scanQR,
                    child: Icon(
                      Icons.filter_center_focus,
                      color: Colors.black,
                      size: 25.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// List<String> packages = [
//   'Default',
//   'Custome 1',
//   'New (+)',
// ];

// class PopUpMenuButtonFilter extends StatefulWidget {
//   @override
//   _PopUpMenuButtonFilterState createState() => _PopUpMenuButtonFilterState();
// }

// class _PopUpMenuButtonFilterState extends State<PopUpMenuButtonFilter> {
//   var selectedFilterPackageIndex = 0;

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(0.0),
//       child: Container(
//         width: 95.0,
//         height: 48.0,
//         child: Row(
//           children: <Widget>[
//             PopupMenuButton(
//               onSelected: (index) {
//                 setState(
//                   () {
//                     selectedFilterPackageIndex = index;
//                   },
//                 );
//               },
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   Text(
//                     packages[selectedFilterPackageIndex],
//                   ),
//                   Icon(
//                     Icons.keyboard_arrow_down,
//                     color: Colors.black,
//                   ),
//                 ],
//               ),
//               itemBuilder: (BuildContext context) => <PopupMenuItem<int>>[
//                 PopupMenuItem(
//                   child: Text(
//                     packages[0],
//                   ),
//                   value: 0,
//                 ),
//                 PopupMenuItem(
//                   child: Text(
//                     packages[1],
//                   ),
//                   value: 1,
//                 ),
//                 PopupMenuItem(
//                   child: Text(
//                     packages[2],
//                   ),
//                   value: 2,
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
