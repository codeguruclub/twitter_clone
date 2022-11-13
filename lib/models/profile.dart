import 'package:uuid/uuid.dart';

class PersonProfile {
  String imageUrl;
  String profileName;
  String profileHandle;
  int ageOfProfile;
  bool isVerified;

  PersonProfile(
      {this.imageUrl = '',
      required this.profileName,
      required this.profileHandle,
      required this.ageOfProfile,
      this.isVerified = false});
}

class Tweet {
  String tweetId = Uuid().v4();
  PersonProfile profile;
  String tweetText;
  String imageUrl;
  int numberOfComments;
  int reTweets;
  int likes;

  Tweet({
    required this.profile,
    required this.tweetText, // tweetText can have a link to another profile e.g. a reference to a specific twitter profile
    this.imageUrl = '',
    this.numberOfComments = 0,
    this.reTweets = 0,
    this.likes = 0,
  });

  //functions to modify the original values
}
