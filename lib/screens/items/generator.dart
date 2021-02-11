import 'package:flutter/material.dart';

String input = '"Please Insert Something"';

class Generator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GeneratorState();
}

class _GeneratorState extends State<Generator> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(
        15.0,
      ),
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  style: BorderStyle.solid,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(15.0),
                ),
              ),
              child: Image.network(
                  'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=$input'),
              width: 320.0,
              height: 320.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(child: Text('QR code for $input')),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: 'Type here',
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                  onChanged: (value) {
                    value == ''
                        ? value = '"Please Insert Something"'
                        : value = value;
                    setState(() {
                      input = value;
                    });
                    // _inputChecking(input);
                  },
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
