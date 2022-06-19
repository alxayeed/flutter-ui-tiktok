import 'package:flutter/material.dart';
import 'package:flutter_tiktok/tabs/tab_template.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        // appbar
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: const Center(
            child: Text(
              "Al Xayeed",
              style: TextStyle(color: Colors.black),
            ),
          ),
          leading: const Icon(
            Icons.person_add,
            color: Colors.black,
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(18.0),
              child: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            //profile image
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                  color: Colors.grey[300], shape: BoxShape.circle),
            ),

            const SizedBox(
              height: 10.0,
            ),

            const Text(
              "@alxayeed",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 18.0),

            //like follow following
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Column(
                      children: [
                        const Text(
                          "57",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0),
                        ),
                        Text(
                          "Following",
                          style: TextStyle(color: Colors.grey[800]),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      children: [
                        const Text(
                          "14",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0),
                        ),
                        Text(
                          "Followers",
                          style: TextStyle(color: Colors.grey[800]),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        const Text(
                          "78",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0),
                        ),
                        Text(
                          "Likes",
                          style: TextStyle(color: Colors.grey[800]),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10.0),

            // buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 40.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(5)),
                  child: const Text(
                    "View Profile",
                    style: TextStyle(color: Colors.black, fontSize: 20.0),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(5)),
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.grey[800],
                    )),
                Container(
                    padding: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(5)),
                    child: Icon(
                      Icons.bookmark,
                      color: Colors.grey[800],
                    )),
              ],
            ),

            // bio
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Text(
                "All quiet on the western front",
                style: TextStyle(color: Colors.grey.shade700, fontSize: 14.0),
              ),
            ),

            // default tab controller
            const TabBar(tabs: [
              Tab(
                icon: Icon(
                  Icons.grid_3x3,
                  color: Colors.black,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.black,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.lock_outline_rounded,
                  color: Colors.black,
                ),
              ),
            ]),

            // Tabs
            Expanded(
                child: TabBarView(children: [
              ProfileTab(color: Colors.amber, items: 12),
              ProfileTab(
                color: Colors.greenAccent,
                items: 17,
              ),
              ProfileTab(
                color: Colors.pinkAccent,
                items: 4,
              ),
            ]))
          ],
        ),
      ),
    );
  }
}
