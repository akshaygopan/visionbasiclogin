import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridDashboard extends StatelessWidget {
  final Items item1 = new Items(
      title: "Call",
      subtitle: "Contacts",
      event: "3 Events",
      img: "assets/call.png");

  final Items item2 = new Items(
    title: "Message",
    subtitle: "inbox",
    event: "4 Items",
    img: "assets/message.png",
  );
  final Items item3 = new Items(
    title: "Music",
    subtitle: "Listen to fav songs",
    event: "",
    img: "assets/music.png",
  );
  final Items item4 = new Items(
    title: "Navigation",
    subtitle: "select destination",
    event: "",
    img: "assets/navigation.png",
  );
  final Items item5 = new Items(
    title: "News",
    subtitle: "Today's highlights",
    event: "4 Items",
    img: "assets/news.png",
  );
  final Items item6 = new Items(
    title: "To Do List",
    subtitle: "",
    event: "2 Items",
    img: "assets/todolist.png",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    var color = 0xff616161;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return Container(
              decoration: BoxDecoration(
                  color: Color(color), borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    data.img,
                    width: 42,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.title,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    data.subtitle,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white38,
                            fontSize: 10,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.event,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white70,
                            fontSize: 11,
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String event;
  String img;
  Items({this.title, this.subtitle, this.event, this.img});
}
