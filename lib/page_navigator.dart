import 'package:credit_clan_test/pages/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class PageNavigatorScreen extends StatefulWidget {
  const PageNavigatorScreen({Key? key}) : super(key: key);

  @override
  _PageNavigatorScreenState createState() => _PageNavigatorScreenState();
}

class _PageNavigatorScreenState extends State<PageNavigatorScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: IndexedStack(
              index: currentIndex,
              children: [
                DashBoard(),
                // MyProjectS(),
                // ProfileScreen(),
              ],
            ),
          ),
          _DeliveryNavigationBar(
              index: currentIndex,
              onIndexSelected: (index) {
                setState(() {
                  currentIndex = index;
                });
              })
        ],
      ),
    );
  }
}

class _DeliveryNavigationBar extends StatelessWidget {
  const _DeliveryNavigationBar(
      {Key? key, required this.index, required this.onIndexSelected})
      : super(key: key);
  final int index;
  final ValueChanged<int> onIndexSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0.0),
      child: Container(
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Color.fromARGB(71, 0, 0, 0),
            blurRadius: 16.0,
            spreadRadius: 0.5,
            offset: Offset(0.7, 0.7),
          )
        ]),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20.0, top: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                color: Colors.transparent,
                child: GestureDetector(
                  onTap: () => onIndexSelected(0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //onPressed: () => onIndexSelected(0),
                      Container(
                          height: 25,
                          width: 40,
                          child: Icon(FeatherIcons.creditCard,
                              color: index == 0
                                  ? Color(0xff5D0CE1)
                                  : Color(0xff25265E).withOpacity(.4))),
                    ],
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                child: GestureDetector(
                  onTap: () => onIndexSelected(1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 25,
                        width: 40,
                        child: Icon(FeatherIcons.bell,
                            color: index == 1
                                ? Color(0xff5D0CE1)
                                : Color(0xff25265E).withOpacity(.4)),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => onIndexSelected(2),
                child: Column(
                  children: [
                    Container(
                        height: 25,
                        width: 40,
                        child: Icon(FeatherIcons.messageSquare,
                            color: index == 2
                                ? Color(0xff5D0CE1)
                                : Color(0xff25265E).withOpacity(.4))),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
