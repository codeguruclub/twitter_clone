import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twitter_clone/components/tweet_cards.dart';
import 'package:twitter_clone/mockdata/mock_data.dart';

import 'models/profile.dart';

void main() {
  runApp(const MyApp());
}

const Color twitterBlueColor = Color(0XFF1DA1F1);
const Color translucentBlackColor = Color(0xE6000000);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twitter',
      theme: ThemeData.dark().copyWith(
        // bottom navbar color
        canvasColor: Colors.black,
        //set text theme as well, check twitter font
        // textTheme: Theme.of(context)
        //     .textTheme
        //     .copyWith(bodyText1: GoogleFonts.roboto()),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: twitterBlueColor, foregroundColor: Colors.white),
      ),
      home: const MyHomePage(title: 'Bhaulik'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  List<Tweet> getTweets() {
    return tweets;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: translucentBlackColor,
              snap: true,
              floating: true,
              expandedHeight: 20,
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(FontAwesomeIcons.wandSparkles),
                )
              ],
              leading: Row(
                children: [
                  //Note: wrapping around a row because it was not changing otherwise
                  //navbar avatar
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 20.0,
                      backgroundColor: Color(0xFF5C6BC0),
                      child: const Text(
                        'B',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              title: Icon(
                FontAwesomeIcons.twitter,
                color: twitterBlueColor,
                size: 35,
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: TweetCard(
                          tweet: getTweets()[index],
                        ),
                      ),
                  //ListTile
                  childCount: getTweets().length), //SliverChildBuildDelegate
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.workspaces),
              label: 'Spaces',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'School',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mail_outline_outlined),
              label: 'Messages',
            ),
          ],
          currentIndex: 0,
          // onTap: () => {},
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {},
          tooltip: 'Tweet',
          child: const Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
