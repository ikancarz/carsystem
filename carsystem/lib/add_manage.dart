import 'package:carsystem/new/Dashboard_page.dart';
import 'package:flutter/material.dart';
import 'package:carsystem/new/config/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddManageScreen extends StatefulWidget {
  const AddManageScreen({super.key});

  @override
  State<AddManageScreen> createState() => _AddManageScreenState();
}

class _AddManageScreenState extends State<AddManageScreen> {
  //----------------bool var
  bool _isPeopleClicked = true;
  bool _isGroupClicked = false;
  bool _isApprovedClicked = true;
  bool _isAwaitApprovalClicked = false;
  //for the checkbox before to Name list for selction
  bool ischeckboxClicked = false;

  //popup menu button elements for right appbar icon
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

  // //-----------------------------------------------------
  void _handleMenuItemSelected(String value) {
    switch (value) {
      case 'Account':
        print("Account selected");
        //navigatie to account section similary for all below
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

  //--------------------------class instances
  AppColor appcolor = AppColor();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: NavDrawer(selected: DrawerSelection.Addmanageppl),//not using this feature
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: appcolor.whiteColor,
        //centerTitle: true,
        iconTheme: IconThemeData(
          color: appcolor.blackColor,
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
      body: Center(
        child: Row(
          children: [
            SizedBox(
              width: 70.w,
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  // Divider(),
                  ListTile(
                    //selected: widget.selected == DrawerSelection.home,
                    leading: Icon(
                      Icons.home,
                      color: appcolor.blackColor,
                    ),
                    title: const Text("Home"), //dashboard
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => DashBoard()));
                    },
                  ),
                  ListTile(
                    //selected: widget.selected == DrawerSelection.Notifications,
                    leading: Icon(Icons.car_repair_outlined,
                        color: appcolor.blackColor),
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
                      color: appcolor.blackColor,
                    ),
                    title: Text("User"),
                    onTap: () {},
                  ),
                  ListTile(
                    //selected: widget.selected == DrawerSelection.Owner,
                    leading: Icon(Icons.open_with_outlined,
                        color: appcolor.blackColor),
                    title: Text("Owner"),
                    onTap: () {
                      // Navigator.of(context)
                      //     .push(MaterialPageRoute(builder: (context) => AboutPage()));
                    },
                  ),
                  ListTile(
                    //selected: widget.selected == DrawerSelection.Pilot,
                    leading:
                        Icon(Icons.emoji_people, color: appcolor.blackColor),
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
                    leading: Icon(Icons.car_rental, color: appcolor.blackColor),
                    title: const Text("Car Dashboard"),
                    onTap: () {
                      // Navigator.of(context)
                      //     .push(MaterialPageRoute(builder: (context) => NewHomeScreen()));
                    },
                  ),
                  ListTile(
                    //selected: widget.selected == DrawerSelection.Reservations,
                    leading: Icon(Icons.book_sharp, color: appcolor.blackColor),
                    title: const Text("Reservations"),
                    onTap: () {
                      // Navigator.of(context)
                      //     .push(MaterialPageRoute(builder: (context) => NewHomeScreen()));
                    },
                  ),
                  Container(
                    color: appcolor.greyColor10,
                    child: ListTile(
                      //selected: widget.selected == DrawerSelection.Addmanageppl,
                      leading: Icon(Icons.people_alt_outlined,
                          color: appcolor.blackColor),
                      title: const Text("Add & Manage People"),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => AddManageScreen()));
                      },
                    ),
                  ),
                  ListTile(
                    //selected: widget.selected == DrawerSelection.Notifications,
                    leading:
                        Icon(Icons.notifications, color: appcolor.blackColor),
                    title: const Text("Notificatons"),
                    onTap: () {
                      // Navigator.of(context)
                      //     .push(MaterialPageRoute(builder: (context) => NewHomeScreen()));
                    },
                  ),
                  ListTile(
                    //selected: widget.selected == DrawerSelection.Chat_Support,
                    leading: Icon(Icons.support_agent_sharp,
                        color: appcolor.blackColor),
                    title: const Text("Chat Support"),
                    onTap: () {
                      // Navigator.of(context)
                      //     .push(MaterialPageRoute(builder: (context) => NewHomeScreen()));
                    },
                  ),
                  ListTile(
                    //selected: widget.selected == DrawerSelection.Payments,
                    leading: Icon(Icons.payments_outlined,
                        color: appcolor.blackColor),
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
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //wecole card
                  SizedBox(
                    height: 10.h,
                  ),

                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    "Add & Manage People",
                    style:
                        TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),

                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.sp),
                        child: GestureDetector(
                          onTap: () {
                            _isPeopleClicked = true;
                            _isGroupClicked = false;
                            setState(() {});
                            print("people item data");
                            //funtion on data to be shown once people is selected to be called here
                          },
                          child: Text("People",
                              style: _isPeopleClicked
                                  ? TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.sp)
                                  : TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 18.sp)),
                        ),
                      ),
                      //SizedBox(width: 5.w),
                      Padding(
                        padding: EdgeInsets.all(10.sp),
                        child: GestureDetector(
                          onTap: () {
                            _isPeopleClicked = false;
                            _isGroupClicked = true;
                            setState(() {});
                            print("groups item data");
                          },
                          child: Text("Groups",
                              style: _isGroupClicked
                                  ? TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.sp)
                                  : TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 18.sp)),
                        ),
                      )
                    ],
                  ),

                  Divider(
                    thickness: 10.sp,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SingleChildScrollView(
                    child: Row(
                      children: [
                        SizedBox(
                          height: 35,
                          child: ElevatedButton(
                            onPressed: () {
                              _isApprovedClicked = true;
                              _isAwaitApprovalClicked = false;
                              setState(() {});
                              //functiion on whether approved to awaiting approval
                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              backgroundColor: _isApprovedClicked
                                  ? appcolor.blackColor
                                  : appcolor.greyColor10,
                            ),
                            child: Text(
                              "Approved",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: _isApprovedClicked
                                      ? appcolor.whiteColor
                                      : appcolor.blackColor),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        SizedBox(
                          height: 35,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              backgroundColor: _isAwaitApprovalClicked
                                  ? appcolor.blackColor
                                  : appcolor.greyColor10,
                            ),
                            onPressed: () {
                              _isApprovedClicked = false;
                              _isAwaitApprovalClicked = true;
                              setState(() {});
                              //functiion on whether approved to awaiting approval
                            },
                            child: Text(
                              "Awaiting Approval",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: _isAwaitApprovalClicked
                                      ? appcolor.whiteColor
                                      : appcolor.blackColor),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SingleChildScrollView(
                    child: Row(
                      children: [
                        SizedBox(
                          height: 30,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              backgroundColor: appcolor.greyColor10,
                            ),
                            onPressed: () {
                              //functiion on whether approved to awaiting approval
                            },
                            child: Row(
                              children: [
                                Text(
                                  "All",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: appcolor.blackColor),
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: appcolor.blackColor,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        SizedBox(
                          height: 30,
                          child: Container(
                            decoration: BoxDecoration(
                                color: appcolor.greyColor10,
                                borderRadius: BorderRadius.circular(5)),
                            width: 80.w,
                            //height: 30.h,
                            child: TextField(
                              onChanged: ((value) {
                                //serch function to be written
                              }),
                              decoration: const InputDecoration(
                                hintText: "Search by name or email address",
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.search),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 50.w,
                        ),
                        SizedBox(
                          height: 30,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              backgroundColor: appcolor.greyColor10,
                            ),
                            onPressed: () {
                              //functiion on whether approved to export button pressed
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.download_for_offline_outlined,
                                  color: appcolor.blackColor,
                                ),
                                SizedBox(
                                  width: 3.w,
                                ),
                                Text(
                                  "Export",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: appcolor.blackColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        SizedBox(
                          height: 30,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              backgroundColor: appcolor.greyColor10,
                            ),
                            onPressed: () {
                              //functiion for bulk addition
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.cloud_upload_outlined,
                                  color: appcolor.blackColor,
                                ),
                                SizedBox(
                                  width: 3.w,
                                ),
                                Text(
                                  "Bulk Add",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: appcolor.blackColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        SizedBox(
                          height: 30,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              backgroundColor: appcolor.greyColor10,
                            ),
                            onPressed: () {
                              //new employee add fucntion
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.group_add,
                                  color: appcolor.blackColor,
                                ),
                                SizedBox(
                                  width: 3.w,
                                ),
                                Text(
                                  "Add",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: appcolor.blackColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SingleChildScrollView(
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 60.h,
                            child: Container(
                              color: appcolor.greyColor10,
                              child: Padding(
                                padding: EdgeInsets.all(12.sp),
                                child: Row(children: [
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  //checkbox for names selection

                                  Checkbox(
                                      value: ischeckboxClicked,
                                      onChanged: (value) {
                                        setState(() {
                                          ischeckboxClicked = value!;
                                        });
                                      }),
                                  Text(
                                    "Name",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.sp),
                                  ),
                                  SizedBox(
                                    width: 40.w,
                                  ),
                                  Text(
                                    "Status",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.sp),
                                  ),
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  Text(
                                    "Email",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.sp),
                                  ),
                                  SizedBox(
                                    width: 40.w,
                                  ),
                                  Text(
                                    "Employee ID",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.sp),
                                  ),
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  Text(
                                    "Role",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.sp),
                                  ),
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  Text(
                                    "Group",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.sp),
                                  ),
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  Text(
                                    "Last Invited",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.sp),
                                  ),
                                ]),
                              ),
                            ),
                          ),
                        ) // Text('This is another widget in the row'),
                      ],
                    ),
                  ),
                  //the api fetched data of emplyee has to shown below
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
