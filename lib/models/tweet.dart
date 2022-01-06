import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:sentimental_analyst/models/services.dart';
import 'package:sentimental_analyst/models/tweets.dart';
import 'package:sentimental_analyst/modules/favourits.dart';
import 'package:sentimental_analyst/modules/result.dart';

class Tweet extends StatefulWidget {
  final String avatar;
  final String username;
  final String name;
  // final String timeAgo;
  final String text;
  final String comments;
  final String retweets;
  final String favorites;
  final int index;

  const Tweet({
    required this.avatar,
    required this.username,
    required this.name,
    // required this.timeAgo,
    required this.text,
    required this.comments,
    required this.retweets,
    required this.favorites,
    required this.index,
  });

  @override
  State<Tweet> createState() => _TweetState();
}

class _TweetState extends State<Tweet> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            tweetAvatar(),
            tweetBody(),
          ],
        ),
      ),
    );
  }

  Widget tweetAvatar() {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: CircleAvatar(
        backgroundImage: NetworkImage(this.widget.avatar),
      ),
    );
  }

  Widget tweetBody() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          tweetHeader(),
          tweetText(),
          tweetButtons(),
        ],
      ),
    );
  }

  Widget tweetHeader() {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 5.0),
          child: Text(
            widget.username,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          '@${widget.name}',
          style: const TextStyle(
            color: Colors.grey,
          ),
        ),
        const Spacer(),
        IconButton(
          icon: const Icon(
            FontAwesomeIcons.angleDown,
            size: 14.0,
            color: Colors.grey,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget tweetText() {
    return Text(
      widget.text,
      overflow: TextOverflow.clip,
    );
  }

  Widget tweetButtons() {
    return Container(
      margin: const EdgeInsets.only(top: 10.0, right: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // tweetIconButton(FontAwesomeIcons.comment, comments,index),
          tweetIconButton(FontAwesomeIcons.check, widget.index,() {
            
                        Provider.of<ApiGetter>(context, listen: false)
                            .fetchData("sf");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Result();
                            },
                          ),
                        );
          },),
          tweetIconButton(FontAwesomeIcons.heart, widget.index,() {
            setState(() {
              FavoriteTweets.add(tweets[widget.index]);
              print(FavoriteTweets[0]);
            });
          },),
          // tweetIconButton(FontAwesomeIcons.share, '',index),
        ],
      ),
    );
  }

  Widget tweetIconButton(IconData icon, int index,Function() func) {
    return Row(
      children: [
        IconButton(
          onPressed: func,
          // () {
          //   setState(() {
          //     FavoriteTweets.add(tweets[index]);
          //     print(FavoriteTweets[0]);
          //   });
          // },
          icon: Icon(
            icon,
            size: 16.0,
            color: Colors.black45,
          ),
        ),
        // Container(
        //   margin: const EdgeInsets.all(6.0),
        //   child: Text(
        //     "text",
        //     style: const TextStyle(
        //       color: Colors.black45,
        //       fontSize: 14.0,
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
