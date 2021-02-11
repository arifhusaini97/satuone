import 'package:flutter/material.dart';

class BiodataAbout extends StatelessWidget {
  final int house;
  BiodataAbout(this.house);

  @override
  Widget build(BuildContext context) {
    switch (house) {
      case 1:
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              _containHeader("Background"),
              _contain("Gender", "Male"),
              _contain("Marriage Status", "Single"),
              _contain("Birth Date", "23/07/1997"),
              _contain("Phone Number", "013-636 2353"),
              _contain("District", "Klang"),
              _contain("State", "Selangor Darul Ehsan"),
              _contain("Country", "Malaysia"),
              Divider(
                height: 35.0,
                color: Colors.black54,
                indent: 10.0,
                endIndent: 10.0,
              ),
              _containHeader("Strategic Plan"),
              _contain(
                  "Philosophy", "Everyone have a chance to emprovise themselves"),
              _contain("Vision", "Strategic Entrepruneur"),
              _contain("Mission", "Change The World"),
              _contain("Objective", "(1) To be a genius mathematicians.\n(2) To have a great personality. "),
              _contain("Motto", "Always Be Cool"),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        );
        break;
      case 2:
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              _containHeader("Background"),
              _contain("Association", "Universiti Teknologi MARA (UiTM) Cawangan Negeri Sembilan Kampus Seremban 3"),
              _contain("Type", "Student Club"),
              _contain("Organization Size", "6 Advisors, 234 Members and 17.4k Alumni"),
              _contain("Founded", "23/06/1997"),
              _contain("Contact Number", "013-636 2353"),
              _contain("Office", "FSKM, Lvl 3, MK11"),
              _contain("District", "Klang"),
              _contain("State", "Selangor Darul Ehsan"),
              _contain("Country", "Malaysia"),
              _contain("Industry", "Student Affair"),
              _contain("Specialities", "Social, Student Programme, Forum, Tutoring Event, Award Ceremony Event"),
              Divider(
                height: 35.0,
                color: Colors.black54,
                indent: 10.0,
                endIndent: 10.0,
              ),
              _containHeader("Strategic Plan"),
              _contain("Philosophy", "Everyone have a chance to emprovise themselves"),
              _contain("Vision", "Strategic Organization"),
              _contain("Mission", "Change The World"),
              _contain("Objective", "(1) To serve UiTM Seremban 3 students.\n(2) To improvise the system of student affair. "),
              _contain("Motto", "Student First"),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        );
        break;
      case 3:
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              _containHeader("Background"),
              _contain("Host", "JPK UiTM Seremban 3"),
              _contain("Level", "Open"),
              _contain("Date", "06/12/19 (Wed)"),
              _contain("Time", "1000 - 2300"),
              _contain("Duration", "13 h"),
              _contain("Place", "Pusat Islam UiTM Seremban 3"),
              _contain("District", "Seremban 3"),
              _contain("State", "Negeri Sembilan Darul Khusus"),
              _contain("Country", "Malaysia"),
              _contain("Industry", "Professional Media"),
              _contain("Category", "Creative and Innovation"),
              _contain("Tags", "Social, Student Programme, Forum, Tutoring Event, Award Ceremony Event"),
              Divider(
                height: 35.0,
                color: Colors.black54,
                indent: 10.0,
                endIndent: 10.0,
              ),
              _containHeader("Strategic Plan"),
              _contain("Purpose", "To educate the student about Tarikh Islam."),
              _contain("Objective", "(1) O1: To serve UiTM Seremban 3 students.\n(2) O2: To improvise the system of student affair. "),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        );
        break;
      case 4:
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              _containHeader("Background"),
              _contain("Industry", "Student Affair"),
              _contain("Organization Size", "6 Advisor, 234 Members and 17.4k Alumni"),
              _contain("Founded", "23/06/1997"),
              _contain("Contact Number", "013-636 2353"),
              _contain("Type", "Student Club"),
              _contain("Office", "FSKM, Lvl 3, MK11"),
              _contain("District", "Klang"),
              _contain("State", "Selangor Darul Ehsan"),
              _contain("Country", "Malaysia"),
              _contain("Specialities", "Social, Student Programme, Forum, Tutoring Event, Award Ceremony Event"),
              Divider(
                height: 35.0,
                color: Colors.black54,
                indent: 10.0,
                endIndent: 10.0,
              ),
              _containHeader("Strategic Plan"),
              _contain("Philosophy", "Everyone have a chance to emprovise themselves"),
              _contain("Vision", "Strategic Entrepruneur"),
              _contain("Mission", "Change The World"),
              _contain("Objective", "(1) To serve UiTM Seremban 3 students. \n(2) To improvise the system of student affair. "),
              _contain("Motto", "Always Be Cool"),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        );
        break;
    }
    return null;
  }

  Widget _contain(_title, _descr) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _containTitle(_title),
          _containDescr(_descr),
        ],
      ),
    );
  }

  Widget _containHeader(_header) {
    return Row(
      
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Card(
          color: Colors.purple[300],
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              _header,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _containTitle(_title) {
    return Container(
      padding: EdgeInsetsDirectional.only(start: 20, top: 20),
      alignment: Alignment.topLeft,
      width: 110,
      child: Text(
        _title,
        style: TextStyle(
          color: Colors.black54,
          fontSize: 15.0,
        ),
      ),
    );
  }

  Widget _containDescr(_descr) {
    return Container(
      padding: EdgeInsetsDirectional.only(start: 20, top: 20),
      alignment: Alignment.topLeft,
      width: 250,
      child: Text(
        _descr,
        style: TextStyle(
          color: Colors.black,
          fontSize: 15.0,
        ),
      ),
    );
  }
}
