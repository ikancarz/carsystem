import 'package:carsystem/add_manage.dart';
import 'package:carsystem/new/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashBoard extends StatefulWidget {
  DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  bool _isAllActivityClicked = true;
  bool _isRevivedActicityClicked = false;
  bool allActivity = true;
  //dummy data to show in the body
  List<String> _names = ['John', 'Mary', 'David', 'Jane', 'Alex', 'Sarah'];
  List<String> dates = [
    '1-1-2023 to 1-2-2023',
    '2-1-2023 to 3-2-2023'
        '1-1-2023 to 4-2-2023'
        '4-1-2023 to 5-2-2023'
        '5-1-2023 to 6-2-2023'
        '6-1-2023 to 7-2-2023'
  ];
  bool _isAscending = true; //for getting names in ascending
  String _searchQuery = ''; //for textfield used

  //appColors class instance
  AppColor appColor = AppColor();

//popup menu button elements
  final List<PopupMenuEntry<String>> _menuItems = [
    const PopupMenuItem<String>(
      value: 'Account',
      child: ListTile(
        leading: Icon(Icons.manage_accounts_outlined),
        title: Text('User Name'),
        subtitle: Text('example@example.com'),
      ),
    ),
    const PopupMenuItem<String>(
      value: 'Account',
      child: ListTile(
        leading: Icon(Icons.account_box),
        title: Text('Account'),
        //subtitle: Text('example@example.com'),
      ),
    ),
    const PopupMenuItem<String>(
      value: 'Settings',
      child: ListTile(
        leading: Icon(Icons.settings),
        title: Text('Settings'),
        //subtitle: Text('example@example.com'),
      ),
    ),
    const PopupMenuItem<String>(
      value: 'Language',
      child: ListTile(
        leading: Icon(Icons.language),
        title: Text('Language'),
        //subtitle: Text('example@example.com'),
      ),
    ),
    const PopupMenuItem<String>(
      value: 'Logout',
      child: ListTile(
        leading: Icon(Icons.logout),
        title: Text(' Logout'),
        //subtitle: Text('example@example.com'),
      ),
    ),
  ];

  //-----------------------------------------------------
  void _handleMenuItemSelected(String value) {
    switch (value) {
      case 'Account':
        print("Account selected");
        //navi
        break;
      case 'Settings':
        print(" Settings selected");
        break;
      case 'Language':
        print(" Language selected");
        break;
      case 'Logout':
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    //seacrh and filter function
    List<String> filteredNames =
        _names.where((name) => name.contains(_searchQuery)).toList();
    filteredNames
        .sort((a, b) => _isAscending ? a.compareTo(b) : b.compareTo(a));

    return Scaffold(
        //drawer: NavDrawer(selected: DrawerSelection.home),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: appColor.whiteColor,
          //centerTitle: true,
          iconTheme: IconThemeData(
            color: appColor.blackColor,
          ),
          title: Text(
            "Uber for business",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.sp,
                color: Colors.black),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.help),
              tooltip: "Help",
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications),
              //tooltip: "Help",
            ),
            PopupMenuButton<String>(
              itemBuilder: (BuildContext context) => _menuItems,
              onSelected: _handleMenuItemSelected,
              icon: const Icon(Icons.account_circle),
              //shape:
            ),
          ],
        ),
        body: Row(children: [
          SizedBox(
            width: 70.w,
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                // Divider(),
                Container(
                  color: appColor.greyColor10,
                  child: ListTile(
                    //selected: widget.selected == DrawerSelection.home,
                    leading: Icon(
                      Icons.home,
                      color: appColor.blackColor,
                    ),
                    title: const Text("Home"), //dashboard
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => DashBoard()));
                    },
                  ),
                ),
                ListTile(
                  //selected: widget.selected == DrawerSelection.Notifications,
                  leading: Icon(Icons.car_repair_outlined,
                      color: appColor.blackColor),
                  title: const Text("Car"),
                  onTap: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) => NewHomeScreen()));
                  },
                ),
                ListTile(
                  //selected: widget.selected == DrawerSelection.User,
                  leading: Icon(
                    Icons.man_outlined,
                    color: appColor.blackColor,
                  ),
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
                  leading: Icon(Icons.open_with_outlined,
                      color: appColor.blackColor),
                  title: Text("Owner"),
                  onTap: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) => AboutPage()));
                  },
                ),
                ListTile(
                  //selected: widget.selected == DrawerSelection.Pilot,
                  leading: Icon(Icons.emoji_people, color: appColor.blackColor),
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
                  leading: Icon(Icons.car_rental, color: appColor.blackColor),
                  title: const Text("Car Dashboard"),
                  onTap: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) => NewHomeScreen()));
                  },
                ),
                ListTile(
                  //selected: widget.selected == DrawerSelection.Reservations,
                  leading: Icon(Icons.book_sharp, color: appColor.blackColor),
                  title: const Text("Reservations"),
                  onTap: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) => NewHomeScreen()));
                  },
                ),
                ListTile(
                  selectedTileColor: appColor.greyColor10,
                  //selected: widget.selected == DrawerSelection.Addmanageppl,
                  leading: Icon(Icons.people_outline_rounded,
                      color: appColor.blackColor),
                  title: const Text("Add & Manage People"),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AddManageScreen()));
                  },
                ),
                ListTile(
                  //selected: widget.selected == DrawerSelection.Notifications,
                  leading:
                      Icon(Icons.notifications, color: appColor.blackColor),
                  title: const Text("Notificatons"),
                  onTap: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) => NewHomeScreen()));
                  },
                ),
                ListTile(
                  //selected: widget.selected == DrawerSelection.Chat_Support,
                  leading: Icon(Icons.support_agent_sharp,
                      color: appColor.blackColor),
                  title: const Text("Chat Support"),
                  onTap: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) => NewHomeScreen()));
                  },
                ),
                ListTile(
                  //selected: widget.selected == DrawerSelection.Payments,
                  leading:
                      Icon(Icons.payments_outlined, color: appColor.blackColor),
                  title: const Text("Payments"),
                  onTap: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) => NewHomeScreen()));
                  },
                ),
              ],
            ),
          ),
          Divider(
            color: appColor.blackColor,
            thickness: 5,
          ),
          Expanded(
            child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10.h,
                  ),

                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Activity",
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.sp),
                        child: GestureDetector(
                          onTap: () {
                            _isAllActivityClicked = true;
                            _isRevivedActicityClicked = false;
                            setState(() {
                              //data of all activity will be shown
                              print(
                                  "all activity status  ${_isAllActivityClicked}");
                            });
                          },
                          child: Text(
                            "All Activity",
                            style: _isAllActivityClicked
                                ? TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.sp)
                                : TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18.sp),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.sp),
                        child: GestureDetector(
                          onTap: () {
                            _isAllActivityClicked = false;
                            _isRevivedActicityClicked = true;

                            setState(() {
                              //data of revived activity will be shown
                              print(
                                  "all activity status  ${_isRevivedActicityClicked}");
                            });
                          },
                          child: Text(
                            "Reviewed Activity",
                            style: _isRevivedActicityClicked
                                ? TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.sp)
                                : TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18.sp),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Divider(
                    thickness: 10.sp,
                  ),
                  //------------------------------------Need to change here as it is not working inside a Row body
                  Padding(
                    padding: EdgeInsets.all(5.sp),
                    child: TextField(
                      decoration: const InputDecoration(
                        hintText: 'Filter by name',
                        prefixIcon: Icon(Icons.search),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _searchQuery = value;
                        });
                      },
                    ),
                  ),
                  //the body
                  _isAllActivityClicked
                      ? Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                //name and assending option row
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text('Name',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    IconButton(
                                      icon: Icon(_isAscending
                                          ? Icons.arrow_upward
                                          : Icons.arrow_downward),
                                      onPressed: () {
                                        setState(() {
                                          _isAscending =
                                              !_isAscending; // for asending and descending feature
                                        });
                                      },
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: appColor.greyColor10,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      width: 45.w,
                                      height: 25.h,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: 5.sp, left: 5.sp),
                                        child: TextField(
                                          decoration: const InputDecoration(
                                            hintText: 'Filter by name',
                                            prefixIcon: Icon(Icons.search),
                                          ),
                                          onChanged: (value) {
                                            setState(() {
                                              _searchQuery = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: appColor.greyColor10,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      width: 45.w,
                                      height: 25.h,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: 5.sp, left: 5.sp),
                                        child: const Text(
                                            "1-1-2023 to 1-2-2023",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )
                      : Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                //name and assending option row
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text('Name',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    IconButton(
                                      icon: Icon(_isAscending
                                          ? Icons.arrow_upward
                                          : Icons.arrow_downward),
                                      onPressed: () {
                                        setState(() {
                                          _isAscending =
                                              !_isAscending; // for asending and descending feature
                                        });
                                      },
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: appColor.greyColor10,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      width: 45.w,
                                      height: 25.h,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: 5.sp, left: 5.sp),
                                        child: TextField(
                                          decoration: const InputDecoration(
                                            hintText: 'Filter by name',
                                            prefixIcon: Icon(Icons.search),
                                          ),
                                          onChanged: (value) {
                                            setState(() {
                                              _searchQuery = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: appColor.greyColor10,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      width: 45.w,
                                      height: 25.h,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: 5.sp, left: 5.sp),
                                        child: const Text(
                                            "2-1-2023 to 3-2-2023",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )
                ]),
          ),
        ]));
  }
}
