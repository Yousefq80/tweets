import 'package:flutter/material.dart';
import 'package:tweets/twitterelements.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Twitter"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(5),
        child: Container(
          child: GridView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: false,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 5,
              mainAxisExtent: 380,
            ),
            children: [
              Twitteform(
                  image: 'assets/elonpic.png',
                  twittetext: "Comedy is no legal on twitter",
                  senderdivice: "Twitter for iPhone",
                  likecout: "16",
                  mscount: "4"),
              Twitteform(
                  image: 'assets/developer.png',
                  twittetext:
                      "I've been using Vim for about 2 year now, mostly because I can't figure out how to exit from it.",
                  senderdivice: "Twitter for iOS",
                  likecout: "31",
                  retwttecout: "10",
                  mscount: "22"),
            ],
          ),
        ),
      ),
    );
  }
}
