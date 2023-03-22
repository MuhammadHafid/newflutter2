import 'package:flutter/material.dart';
import 'package:newflutter2/detail_screen.dart';
import 'package:newflutter2/model/tourism_place.dart';
import 'package:newflutter2/done_tourism_list.dart';
import 'package:newflutter2/list_item.dart';
import 'package:newflutter2/tourism_list.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<TourismPlace> doneTourismPlaceList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata Surabaya'),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return DoneTourismList(
                        doneTourismPlaceList: doneTourismPlaceList);
                  }),
                );
              },
              icon: const Icon(Icons.done_outline))
        ],
      ),
      body: TourismList(doneTourismPlaceList: doneTourismPlaceList),
    );
  }
}