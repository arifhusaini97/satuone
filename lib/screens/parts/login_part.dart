import 'package:flutter/material.dart';
import '../house.dart';

class LoginPart extends StatefulWidget {
  @override
  _LoginPartState createState() => _LoginPartState();
}

final _identificationNumber = TextEditingController(
  text: '',
);
final _password = TextEditingController(
  text: '',
);

class _LoginPartState extends State<LoginPart> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          constraints: BoxConstraints.expand(height: 225.0),
          child: Image.asset(
            'assets/images/theme/login_theme.jpg',
            fit: BoxFit.fill,
          ),
        ),
        Column(
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'English',
                  style: Theme.of(context).textTheme.body1,
                ),
                SizedBox(
                  width: 5.0,
                ),
                Icon(
                  Icons.language,
                  color: Colors.black,
                  size: 10.0,
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  'Bahasa Melayu',
                  style: Theme.of(context).textTheme.body1,
                ),
                SizedBox(
                  width: 5.0,
                ),
                Icon(
                  Icons.language,
                  color: Colors.black,
                  size: 10.0,
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  'More...',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.brown,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 50.0,
              ),
              child: TextFormField(
                controller: _identificationNumber ,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                ),
                obscureText: false,
                decoration: const InputDecoration(
                  labelText: 'Student ID or Staff ID',
                ),
                validator: (String value) {
                  if (value.trim().isEmpty) {
                    return 'ID is required';
                  }
                  else{
                  return null;
                  }
                },
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 50.0,
              ),
              child: TextFormField(
                controller: _password,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                ),
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                ),
                validator: (String value) {
                  if (value.trim().isEmpty) {
                    return 'Password is required';
                  }
                  else
                  {
                    return null;
                  }
                },
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Container(
              margin: EdgeInsets.all(0),
              child: RaisedButton(
                //shape: ShapeBorder.lerp(ShapeBorder(10.0), null, 18.0),
                //shape: ShapeBorder(border: BorderRadius.all(Radius.circular(16.0))),
                padding: EdgeInsets.symmetric(horizontal: 90.0, vertical: 16.0),
                color: Colors.brown[700],
                textColor: Colors.brown[200],
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => House(),
                    ),
                  );
                },
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Forgotten Password?',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.brown,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
