import 'package:twitter_clone/models/profile.dart';

var mockProfiles = [
  PersonProfile(
      profileName: "Elon Musk",
      ageOfProfile: 8,
      profileHandle: '@elonmusk',
      isVerified: true),
  PersonProfile(
      profileName: 'Justin Trudeau',
      profileHandle: '@jtrudeau',
      ageOfProfile: 10,
      isVerified: true),
  PersonProfile(
      profileName: 'Smith Richard', profileHandle: '@smithh', ageOfProfile: 2)
];

var tweets = [
  Tweet(
      profile: mockProfiles[0],
      likes: 10000,
      reTweets: 5000,
      tweetText:
          'Lets Rock Canada! We are announcing free dental care for everyone'),
  Tweet(
      profile: mockProfiles[2],
      tweetText: "My name is Smith Richard Folks!!!!!!"),
  Tweet(
      profile: mockProfiles[1],
      tweetText: 'Twitter is the best! We will rock the world'),
  Tweet(profile: mockProfiles[1], tweetText: 'Pizza issa good'),
  Tweet(
      profile: mockProfiles[1], tweetText: "I'm the richest man in the world"),
  Tweet(
      profile: mockProfiles[1],
      tweetText: 'To become smart, read lots of books and apply what you read'),
  Tweet(
      profile: mockProfiles[0],
      tweetText: 'We will fight COVID tooth and nail!'),
  Tweet(
      profile: mockProfiles[2],
      tweetText: "I am not verified but soon, 8 bucks"),
];
