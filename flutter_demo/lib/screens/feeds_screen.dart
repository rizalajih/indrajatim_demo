import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_demo/models/card_model.dart';

class FeedsScreen extends StatefulWidget {
  const FeedsScreen({Key key}) : super(key: key);

  @override
  State<FeedsScreen> createState() => _FeedsScreenState();
}

class _FeedsScreenState extends State<FeedsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 199,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 16, right: 6),
          itemCount: cards.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(right: 10),
              height: 199,
              width: 344,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                color: Color(cards[index].cardBackground),
              ),
              // child: Stack(
              //   children: <Widget>[
              //     Positioned(
              //       top: -5,
              //       left: -5,
              //       child: Image.asset(cards[index].cardElementTop),
              //     ),
              //     Positioned(
              //       bottom: -5,
              //       right: -5,
              //       child: Image.asset(cards[index].cardElementBottom),
              //     ),
              //   ],
              // ),
            );
          },
        ),
      ),

      // Padding(
      //   padding: const EdgeInsets.only(left: 16, bottom: 13, top: 29),
      //   child: Row(
      //     children: <Widget>[
      //       Text(
      //         "Just For You",
      //         style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           Container(
      //             alignment: Alignment.centerLeft,
      //             margin: EdgeInsets.only(left: 190),
      //             child: Text(
      //               "See More",
      //               style: TextStyle(fontSize: 11),
      //             ),
      //           )
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
