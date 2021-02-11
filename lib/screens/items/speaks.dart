import 'package:flutter/material.dart';

class Speaks extends StatefulWidget {
  final String dp;
  final String name;
  final String nickname;
  final String time;
  final String text;
  final String totComment;
  final String totRecycle;
  final String totReact;
  final String totConfirm;
  final String totMaybe;
  final int type;
  final List<String> img;

  Speaks(
      {Key key,
      @required this.dp,
      @required this.name,
      @required this.nickname,
      @required this.time,
      @required this.text,
      @required this.totComment,
      @required this.totRecycle,
      @required this.totReact,
      @required this.totConfirm,
      @required this.totMaybe,
      @required this.type,
      @required this.img})
      : super(key: key);
  @override
  _SpeaksState createState() => _SpeaksState();
}

class _SpeaksState extends State<Speaks> {
  int pageViewActiveIndex = 0;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        semanticContainer: true,
        elevation: 5.0,
        child: Column(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                  "${widget.dp}",
                ),
              ),
              title: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        width: MediaQuery.of(context).size.width * 0.55,
                        child: Text(
                          "${widget.name}",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "${widget.nickname}",
                      ),
                    ],
                  ),
                ],
              ),
              trailing: Text(
                "${widget.time}",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 11,
                ),
              ),
            ),
            widget.text == null
                ? SizedBox(
                    height: 0,
                  )
                : Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 20.0,
                    ),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "${widget.text}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
            _postType(widget.type),
            SizedBox(
              height: 10.0,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black12,
                  width: 1.0,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 0,
                      vertical: 0,
                    ),
                    child: Row(
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.people,
                            color: Colors.purple,
                            size: 25,
                          ),
                        ),
                        Text(
                          "${widget.totComment}",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 0,
                      vertical: 10.0,
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.play_arrow,
                          color: Colors.purple,
                          size: 25,
                        ),
                        Text(
                          "${widget.totRecycle}",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 0,
                      vertical: 10.0,
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.purple,
                          size: 25,
                        ),
                        Text(
                          "${widget.totReact}",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  _eventParticipation(widget.type),
                ],
              ),
            ),
          ],
        ),
      ),
      onTap: () {},
    );
  }

  Widget _postType(type) {
    switch (type) {
      case 1:
        return SizedBox(
          height: 0.0,
        );
      case 2:
        return Container(
          child: Column(
            children: <Widget>[
              _gallery(),
              SizedBox(
                height: 8.0,
              ),
              // Different icon buttons and image slider indicator
              _actions(),
            ],
          ),
        );
      case 3:
        return Column(
          children: <Widget>[
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width * 1,
              child: Image.asset(
                widget.img[0],
                fit: BoxFit.fill,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                //borderRadius: BorderRadius.all(Radius.circular(8.0)),
                color: Colors.grey[200],
                border: Border(
                  top: BorderSide(
                    color: Colors.grey[200],
                    width: 1.0,
                  ),
                ),
              ),
              alignment: Alignment.topLeft,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Hari Keluarga Tahun 2019',
                          style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Date, Time & Duration: ',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.grey[600],
                          ),
                        ),
                        Text(
                          '29/09/19, 8.00am & 8h ',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Place:',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.grey[600],
                          ),
                        ),
                        Text(
                          'Padang Besar, UiTM Merbok',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
          ],
        );
      default:
        return SizedBox(
          height: 0.0,
        );
    }
  }

  Widget _gallery() {
    return Container(
      constraints: BoxConstraints(
        maxHeight: 200.0, // changed to 400
        minHeight: 200.0, // changed to 200
        maxWidth: double.infinity,
        minWidth: double.infinity,
      ),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        // border: Border(
        //   top: BorderSide(
        //     color: Colors.grey[50],
        //     width: 1.0,
        //   ),
        // ),
      ),
      child: widget.img.length > 1
          ? galleryPageView()
          : Image.asset(
              widget.img[0],
              fit: BoxFit.contain,
            ),
    );
  }

  Widget galleryPageView() {
    return PageView.builder(
      itemCount: widget.img.length,
      onPageChanged: (currentIndex) {
        setState(() {
          this.pageViewActiveIndex = currentIndex;
        });
      },
      itemBuilder: (BuildContext context, int index) {
        return Image.asset(
          widget.img[index],
          fit: BoxFit.contain,
        );
      },
    );
  }

  Widget _actions() {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        // Slider indicator
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ...widget.img.map((s) {
                return Container(
                  margin: EdgeInsets.only(right: 4.0),
                  height: widget.img.length <= 1 ? 0.0 : 6.0,
                  width: widget.img.length <= 1 ? 0.0 : 6.0,
                  decoration: BoxDecoration(
                    color: pageViewActiveIndex == widget.img.indexOf(s)
                        ? Colors.blueAccent
                        : Colors.grey[300],
                    shape: BoxShape.circle,
                  ),
                );
              }),
            ],
          ),
        ),
      ],
    );
  }

  Widget _eventParticipation(type) {
    return type != 3
        ? Container(
            height: 50,
            width: 80,
            color: Colors.grey[100],
          )
        : Container(
            padding: EdgeInsets.symmetric(
              horizontal: 0,
              vertical: 10.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.event,
                  color: Colors.purple,
                  size: 25,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "${widget.totConfirm}",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "${widget.totMaybe}",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 10.0,
                ),
              ],
            ),
          );
  }
}
//  Image.asset(
//         "${widget.img}",
//         height: 170,
//         width: MediaQuery.of(context).size.width,
//         fit: BoxFit.cover,
//       ),
