import 'package:flutter/material.dart';
import 'package:carsystem/new/nav_drawer.dart';
import 'package:carsystem/new/config/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddManageScreen extends StatefulWidget {
  const AddManageScreen({super.key});

  @override
  State<AddManageScreen> createState() => _AddManageScreenState();
}

class _AddManageScreenState extends State<AddManageScreen> {
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

  //--------------------------class instances
  AppColor appcolor = AppColor();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(selected: DrawerSelection.Addmanageppl),
      appBar: AppBar(
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
              child: Padding(
                padding: EdgeInsets.only(left: 10.sp, right: 10.sp),
                child: Card(
                  color: Colors.amber.shade50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Welcome to dashboard, if you have any queries visit ",
                        style: TextStyle(fontSize: 16.sp),
                      ),
                      GestureDetector(
                          child: Text("here"),
                          onTap: () {
                            //navigate to more details page
                            print("navigating to more details page");
                          })
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              "Add & Manage People",
              style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.h,
            ),
            // SizedBox(
            //   child: Row(
            //     children: [
            //       const ListTile(
            //         title: Text("Did you know that employees can be admins too?"),
            //         subtitle:
            //             Text("Select an employee and change their to admin"),
            //       ),
            //       IconButton(
            //           onPressed: () {
            //             //if the user presses 'x' the card should go of
            //           },
            //           icon: const Icon(Icons.cancel_presentation_outlined))
            //     ],
            //   ),
            // ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(10.sp),
                  child: GestureDetector(
                    onTap: () {
                      print("people item data");
                    },
                    child: Text(
                      "People",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.sp),
                    ),
                  ),
                ),
                //SizedBox(width: 5.w),
                Padding(
                  padding: EdgeInsets.all(10.sp),
                  child: GestureDetector(
                    onTap: () {
                      print("groups item data");
                    },
                    child: Text(
                      "Groups",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.sp),
                    ),
                  ),
                )
              ],
            ),

            Divider(
              thickness: 10.sp,
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.sp),
                  child: ElevatedButton(
                    onPressed: () {
                      //functiion on whether approved to awaiting approval
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: appcolor.blackColor,
                    ),
                    child: const Text(
                      "Approved",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Padding(
                  padding: EdgeInsets.all(8.sp),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: appcolor.blackColor,
                    ),
                    onPressed: () {
                      //functiion on whether approved to awaiting approval
                    },
                    child: const Text(
                      "Awaiting Approval",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.sp),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: appcolor.truegrey,
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
                Padding(
                    padding: EdgeInsets.all(8.sp),
                    child: Container(
                      decoration: BoxDecoration(
                          color: appcolor.truegrey,
                          borderRadius: BorderRadius.circular(10)),
                      width: 80.w,
                      height: 25.h,
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
                    )),
                SizedBox(
                  width: 100.w,
                ),
                Padding(
                  padding: EdgeInsets.all(8.sp),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: appcolor.truegrey,
                    ),
                    onPressed: () {
                      //functiion on whether approved to awaiting approval
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.download_for_offline_outlined,
                          color: appcolor.blackColor,
                        ),
                        SizedBox(
                          width: 5.w,
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
                Padding(
                  padding: EdgeInsets.all(8.sp),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: appcolor.truegrey,
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
                          width: 5.w,
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
                Padding(
                  padding: EdgeInsets.all(8.sp),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: appcolor.truegrey,
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
                          width: 5.w,
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
            )
          ],
        ),
      ),
    );
  }
}
