import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:glow_container/glow_container.dart';
import 'package:todocopy/pages/NotificationPage.dart';

class calendarPage extends StatelessWidget {
  const calendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Calendar Page ")),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 26.0),
            child: badges.Badge(
              position: badges.BadgePosition.topEnd(top: 2, end: 2),
              badgeContent: Text("3", style: TextStyle(fontSize: 8)),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Notificationpage()),
                  );
                },
                icon: Icon(Icons.notifications, color: Colors.deepPurple),
                tooltip: "new messages",
              ),
            ),
          ),
        ],
      ),

      body: Center(
        child: GlowContainer(
          glowRadius: 30,
          gradientColors: [
            Colors.blue[800]!,
            Colors.purple[800]!,
            Colors.pink[800]!,
          ],
          rotationDuration: Duration(seconds: 2),
          glowLocation: GlowLocation.both,
          containerOptions: ContainerOptions(
            padding: EdgeInsets.all(18),
            width: 300,
            height: 100,
            borderRadius: 15,
            backgroundColor: Colors.white,
            borderSide: BorderSide(width: 1.0, color: Colors.white),
          ),
          transitionDuration: Duration(milliseconds: 300),
          showAnimatedBorder: true,
          child: Center(
            child: Column(
              children: [
                Column(
                  children: [
                    Text(
                      'Start New Things ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Help of pub.get',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

        // child: Text("calender page", style: TextStyle(fontSize: 23)),
      ),
    );
  }
}
