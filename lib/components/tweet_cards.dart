import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter_clone/components/styled_tweet_icons.dart';

class TweetCard extends StatefulWidget {
  const TweetCard({Key? key}) : super(key: key);

  @override
  State<TweetCard> createState() => _TweetCardState();
}

class _TweetCardState extends State<TweetCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 2.0, color: Color.fromARGB(47, 51, 54, 1)),
          bottom: BorderSide(width: 2.0, color: Color.fromARGB(47, 51, 54, 0)),
        ),
        color: Colors.black,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 25),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text('test'),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                left: 12,
                top: 15,
              ),
              child: Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //card heading
                          Container(
                            margin: EdgeInsets.only(bottom: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 5.0),
                                      child: Text(
                                        'Elon Musk',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(right: 5.0),
                                        child: Icon(Icons.verified)),
                                    Container(
                                        margin: EdgeInsets.only(right: 5.0),
                                        child: Text('@elonmusk')),
                                    Container(
                                        margin: EdgeInsets.only(right: 5.0),
                                        child: Text('·')),
                                    Text('3d'),
                                  ],
                                ),
                                Icon(FontAwesomeIcons.ellipsis,
                                    color: Color.fromRGBO(113, 118, 123, 1))
                              ],
                            ),
                          ),
                          //TWEET ITSELF!
                          Text('Twitter is the worst! \n But also the best.'),
                          //comments, retweets, likes, share button
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Flexible(
                                child: StyledTweetIcon(
                                  icon: Icon(FontAwesomeIcons.comment),
                                  number: 0,
                                ),
                              ),
                              Flexible(
                                child: StyledTweetIcon(
                                  icon: Icon(FontAwesomeIcons.retweet),
                                  number: 1002,
                                ),
                              ),
                              Flexible(
                                child: StyledTweetIcon(
                                  icon: Icon(FontAwesomeIcons.heart),
                                  number: 10,
                                ),
                              ),
                              Flexible(
                                child: StyledTweetIcon(
                                  icon:
                                      Icon(FontAwesomeIcons.arrowUpFromBracket),
                                  number: 1002,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
