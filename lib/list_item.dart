import 'package:flutter/material.dart';
import 'package:newflutter2/detail_screen.dart';
import 'package:newflutter2/model/tourism_place.dart';
import 'package:newflutter2/done_tourism_list.dart';
import 'package:newflutter2/list_item.dart';
import 'package:newflutter2/tourism_list.dart';

class ListItem extends StatelessWidget {
  final TourismPlace place;
  final bool isDone;
  final Function(bool? value) onCheckboxClick;

  const ListItem(
      {required this.place,
      required this.isDone,
      required this.onCheckboxClick});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isDone
          ? Color.fromRGBO(255, 0, 0, 0.6)
          : Color.fromARGB(255, 10, 150, 38),
      child: Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // children: <Widget>[
          //   Expanded(
          //     // flex: 1,
          //     // child: Image.asset(place.imageAsset),
          //   ),
          //   Expanded(
          //     flex: 2,
          //     child: Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       // child: Column(
          //         // crossAxisAlignment: CrossAxisAlignment.start,
          //         // mainAxisSize: MainAxisSize.min,
          //         // children: <Widget>[
          //         //   Text(
          //         //     place.name,
          //         //     style: const TextStyle(fontSize: 16.0),
          //         //   ),
          //         //   const SizedBox(
          //         //     height: 10,
          //         //   ),
          //         //   Text(place.location),
          //         // ],
          //       ),
          //     ),
          //     Checkbox(
          //       checkColor: Colors.blueAccent,
          //       value: isDone,
          //       onChanged: onCheckboxClick,
          //      ),
          // ],
          ),
    );
  }
}
