import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter_clone/components/styled_tweet_icons.dart';

import '../models/profile.dart';

class TweetCard extends StatefulWidget {
  final Tweet tweet;
  const TweetCard({Key? key, required this.tweet}) : super(key: key);

  @override
  State<TweetCard> createState() => _TweetCardState();
}

class _TweetCardState extends State<TweetCard> {
  @override
  Widget build(BuildContext context) {
    bool isVerifiedProfile = widget.tweet.profile.isVerified;
    String profileName = widget.tweet.profile.profileName;
    String profileHandle = widget.tweet.profile.profileHandle;
    int ageOfProfile = widget.tweet.profile.ageOfProfile;

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
                                        widget.tweet.profile.profileName,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(right: 5.0),
                                        child: isVerifiedProfile
                                            ? Icon(Icons.verified)
                                            : Text('')),
                                    Container(
                                        margin: EdgeInsets.only(right: 5.0),
                                        child: Text(profileHandle)),
                                    Container(
                                        margin: EdgeInsets.only(right: 5.0),
                                        child: Text('·')),
                                    Text("$ageOfProfile"),
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
                                  number: widget.tweet.numberOfComments,
                                ),
                              ),
                              Flexible(
                                child: StyledTweetIcon(
                                  icon: Icon(FontAwesomeIcons.retweet),
                                  number: widget.tweet.reTweets,
                                ),
                              ),
                              Flexible(
                                child: StyledTweetIcon(
                                  icon: Icon(FontAwesomeIcons.heart),
                                  number: widget.tweet.likes,
                                ),
                              ),
                              Flexible(
                                child: StyledTweetIcon(
                                  icon:
                                      Icon(FontAwesomeIcons.arrowUpFromBracket),
                                  number:
                                      0, // this will remain zero always since we don't count the shares
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
