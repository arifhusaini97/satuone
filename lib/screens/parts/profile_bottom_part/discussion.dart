import 'dart:math';

import 'package:flutter/material.dart';
import 'package:satuone/models/discussion_model.dart';
import 'package:satuone/screens/items/chat_bubble.dart';

class Discussion extends StatefulWidget {
  @override
  _DiscussionState createState() => _DiscussionState();
}

class _DiscussionState extends State<Discussion> {
  static Random random = Random();
  String name = names[random.nextInt(10)];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   titleSpacing: 0,
      //   title: InkWell(
      //     child: Row(
      //       children: <Widget>[
      //         Padding(
      //           padding: EdgeInsets.only(left: 0.0, right: 10.0),
      //           child: CircleAvatar(
      //             backgroundImage: AssetImage(
      //               "assets/images/gallery/gallery_0.jpg",
      //             ),
      //           ),
      //         ),
      //         Expanded(
      //           child: Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: <Widget>[
      //               Text(
      //                 name,
      //                 style: TextStyle(
      //                   fontWeight: FontWeight.bold,
      //                   fontSize: 14,
      //                 ),
      //               ),
      //               SizedBox(height: 5),
      //               Text(
      //                 "Online",
      //                 style: TextStyle(
      //                   fontWeight: FontWeight.w400,
      //                   fontSize: 11,
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ],
      //     ),
      //     onTap: () {},
      //   ),
      //   actions: <Widget>[
      //     IconButton(
      //       icon: Icon(
      //         Icons.more_horiz,
      //       ),
      //       onPressed: () {},
      //     ),
      //   ],
      // ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            Flexible(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 10),
                itemCount: conversation.length,
                reverse: true,
                itemBuilder: (BuildContext context, int index) {
                  Map msg = conversation[index];
                  return ChatBubble(
                    message: msg['type'] == "text"
                        ? messages[random.nextInt(10)]
                        : "assets/images/gallery/gallery_${random.nextInt(10)}.jpg",
                    name: msg["name"],
                    time: msg["time"],
                    type: msg['type'],
                    replyText: msg["replyText"],
                    isMe: msg['isMe'],
                    isGroup: msg['isGroup'],
                    isReply: msg['isReply'],
                    replyName: name,
                    username: msg['username'],
                  );
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
//                height: 140,
                decoration: BoxDecoration(
                  //color: Theme.of(context).primaryColor,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[500],
                      offset: Offset(0.0, 1.5),
                      blurRadius: 4.0,
                    ),
                  ],
                ),
                constraints: BoxConstraints(
                  maxHeight: 190,
                ),
                child: SingleChildScrollView(
                  physics: NeverScrollableScrollPhysics(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Flexible(
                        child: ListTile(
                          leading: IconButton(
                            icon: Icon(
                              Icons.add,
                              //color: Theme.of(context).accentColor,
                              color: Colors.purple,
                            ),
                            onPressed: () {},
                          ),
                          contentPadding: EdgeInsets.all(0),
                          title: TextField(
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Theme.of(context).textTheme.title.color,
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  //color: Theme.of(context).primaryColor,

                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              hintText: "Write your message...",
                              hintStyle: TextStyle(
                                fontSize: 15.0,
                                color: Theme.of(context).textTheme.title.color,
                              ),
                            ),
                            maxLines: null,
                          ),
                          trailing: IconButton(
                            icon: Icon(Icons.mic,
                                //color: Theme.of(context).accentColor,
                                color: Colors.purple),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
