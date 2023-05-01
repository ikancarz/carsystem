import 'package:carsystem/add_manage.dart';
import 'package:carsystem/new/Dashboard_page.dart';
import 'package:flutter/material.dart';

class StaticPage extends StatefulWidget {
  const StaticPage({super.key});

  @override
  State<StaticPage> createState() => _StaticPageState();
}

class _StaticPageState extends State<StaticPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Row(
        children: [
          Container(
            width: 200,
            child: Column(
              children: [
                Divider(),
                ListTile(
                  //selected: widget.selected == DrawerSelection.home,
                  leading: const Icon(Icons.car_repair),
                  title: const Text("Car"),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => DashBoard()));
                  },
                ),
                ListTile(
                  //selected: widget.selected == DrawerSelection.User,
                  leading: Icon(Icons.man_outlined),
                  title: Text("User"),
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (context) => MemeCreatorPage(
                    //           selectedImageUrl: defaultImageUrl,
                    //         )));
                  },
                ),
                ListTile(
                  //selected: widget.selected == DrawerSelection.Owner,
                  leading: Icon(Icons.man_sharp),
                  title: Text("Owner"),
                  onTap: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) => AboutPage()));
                  },
                ),
                ListTile(
                  //selected: widget.selected == DrawerSelection.Pilot,
                  leading: const Icon(Icons.drive_eta),
                  title: const Text("Pilot"),
                  onTap: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) => NewHomeScreen()));
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  //selected: widget.selected == DrawerSelection.Car_Dashboard,
                  leading: const Icon(Icons.car_rental),
                  title: const Text("Car Dashboard"),
                  onTap: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) => NewHomeScreen()));
                  },
                ),
                ListTile(
                  //selected: widget.selected == DrawerSelection.Reservations,
                  leading: const Icon(Icons.book_sharp),
                  title: const Text("Reservations"),
                  onTap: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) => NewHomeScreen()));
                  },
                ),
                ListTile(
                  //selected: widget.selected == DrawerSelection.Addmanageppl,
                  leading: const Icon(Icons.book_sharp),
                  title: const Text("Add & Manage People"),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AddManageScreen()));
                  },
                ),
                ListTile(
                  //selected: widget.selected == DrawerSelection.Notifications,
                  leading: const Icon(Icons.notifications),
                  title: const Text("Notificatons"),
                  onTap: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) => NewHomeScreen()));
                  },
                ),
                ListTile(
                  //selected: widget.selected == DrawerSelection.Chat_Support,
                  leading: const Icon(Icons.chat),
                  title: const Text("Chat Support"),
                  onTap: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) => NewHomeScreen()));
                  },
                ),
                ListTile(
                  //selected: widget.selected == DrawerSelection.Payments,
                  leading: const Icon(Icons.payment),
                  title: const Text("Payments"),
                  onTap: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) => NewHomeScreen()));
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Center(
                child: Text('My App Content'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
