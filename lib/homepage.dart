import 'package:flutter/material.dart';
import 'package:rooster_hut_web_app/utiles/custim_tab.dart';
import 'package:rooster_hut_web_app/view/content_view.dart';
import 'custom_tab_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  var scaffoldKye = GlobalKey<ScaffoldState>();

  late double screenHeight;
  late double screenWidth;
  late double topPadding;
  late double bottomPadding;

  late TabController tabController;
  // List<ContentView> contentViews = [
  //   ContentView(
  //       tab: CustomTab(title: 'Home'),
  //       content: Center(
  //         child: Container(
  //           color: Colors.green,
  //           width: 100,
  //           height: 100,
  //         ),
  //       )),
  //   ContentView(
  //       tab: CustomTab(title: 'adadadas'),
  //       content: Center(
  //         child: Container(
  //           color: Colors.blue,
  //           width: 100,
  //           height: 100,
  //         ),
  //       )),
  // ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: 0,
      length: 2,
      vsync: this,
    );
  //  tabController = TabController(length: contentViews.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    topPadding = screenHeight * 0.05;
    bottomPadding = screenHeight * 0.01;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/logo-all.png',
              height: 190.0,
              width: 100.0,

            ),

            Spacer(),
            Container(
              width: 400,
              child: TabBar(
                labelColor: Color.fromRGBO(9, 8, 34, 1.0),

                indicatorColor: Color.fromRGBO(4, 2, 46, 1),
                unselectedLabelColor: Colors.grey,
                controller: tabController,
                tabs: [
                  Text('adsadasda'),
                  Text('daasdasda'),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Colors.black,
        actions: [IconButton(onPressed: ()=> {print('????????????????')}, icon: Icon(Icons.car_rental),),],
      ),
      body: Container(
        child: TabBarView(
          controller: tabController,
          children: [
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
     // endDrawer: drawer(),
     // key: scaffoldKye,
      // body: Padding(
      //   padding: EdgeInsets.only(bottom: bottomPadding, top: topPadding),
      //   child: LayoutBuilder(
      //     builder: (context, constraints) {
      //       if (constraints.maxWidth > 715) {
      //         return desktopView();
      //       } else {
      //         return mobileView();
      //       }
      //     },
      //   ),
      // ),

  }

  // Widget desktopView() {
  //   return Column(
  //     mainAxisAlignment: MainAxisAlignment.start,
  //     crossAxisAlignment: CrossAxisAlignment.end,
  //     children: [
  //      CustomTabBar(
  //         tabs: contentViews.map((e) => e.tab).toList(),
  //        controller: tabController,
  //       ),
  //       Container(
  //         height: screenHeight * 0.85,
  //         child: TabBarView(
  //           controller: tabController,
  //           children: contentViews.map((e) => e.content).toList(),
  //         ),
  //       )
  //     ],
  //   );
  // }

  Widget mobileView() {
    return Padding(
      padding:
          EdgeInsets.only(left: screenWidth * 0.05, right: screenWidth * 0.05),
      child: Container(
          width: screenWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: () => scaffoldKye.currentState!.openEndDrawer(),
                color: Colors.white,
              )
            ],
          )),
    );
  }

  // Widget drawer() {
  //   return Drawer(
  //     child: ListView(
  //       children: [
  //             Container(
  //               height: screenHeight * 0.1,
  //             )
  //           ] +
  //           contentViews
  //               .map((e) => Container(
  //                     child: ListTile(
  //                       title: Text(e.tab.title),
  //                       onTap: () {},
  //                     ),
  //                   ))
  //               .toList(),
  //     ),
  //   );
  // }
}
