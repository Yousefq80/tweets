import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Twitteform extends StatelessWidget {
  final String image;
  final String twittetext;
  final String senderdivice;
  final String likecout;
  final String retwttecout;
  final String mscount;

  Twitteform(
      {required this.image,
      required this.twittetext,
      required this.senderdivice,
      required this.likecout,
      this.retwttecout = "",
      required this.mscount,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: 500, //minimum height
        minWidth: 300, // minimum width

        maxHeight: MediaQuery.of(context).size.height,
        //maximum height set to 100% of vertical height

        maxWidth: MediaQuery.of(context).size.width,
        //maximum width set to 100% of width
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), //color of shadow
            spreadRadius: 5, //spread radius
            blurRadius: 7, // blur radius
            offset: Offset(0, 2), // changes position of shadow
            //first paramerter of offset is left-right
            //second parameter is top to down
          ),
          //you can set more BoxShadow() here
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                image,
                width: 200,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, top: 10),
            child: Text(
              twittetext,
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, top: 20),
            child: Row(
              children: [
                Text("5:16 PM ."),
                SizedBox(
                  width: 4,
                ),
                Text("2022-10-28. "),
                SizedBox(
                  width: 3,
                ),
                Text(
                  senderdivice,
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6),
            child: Row(
              children: [
                Icon(
                  Icons.favorite_border,
                  size: 20,
                ),
                Text(likecout, style: TextStyle(fontSize: 15)),
                SizedBox(
                  width: 9,
                ),
                Icon(
                  Icons.sync,
                  size: 20,
                ),
                Text(retwttecout, style: TextStyle(fontSize: 15)),
                SizedBox(
                  width: 9,
                ),
                SizedBox(
                  width: 200,
                ),
                Icon(
                  Icons.chat_bubble_outline,
                  size: 20,
                ),
                Text(mscount, style: TextStyle(fontSize: 15))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
