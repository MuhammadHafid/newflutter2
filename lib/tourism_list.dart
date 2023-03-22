import 'package:flutter/material.dart';
import 'package:newflutter2/detail_screen.dart';
import 'package:newflutter2/model/tourism_place.dart';
import 'package:newflutter2/done_tourism_list.dart';
import 'package:newflutter2/list_item.dart';
import 'package:newflutter2/tourism_list.dart';
import 'package:provider/provider.dart';
import 'package:newflutter2/provider/done_tourism_provider.dart';

class TourismList extends StatefulWidget {
  const TourismList({Key? key}) : super(key: key);

  @override
  _TourismListState createState() => _TourismListState();
}

class _TourismListState extends State<TourismList> {
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
        name: 'Surabaya Submarine Monument',
        location: 'Jl Pemuda',
        imageAsset: 'assets/images/kapal_selam.jpg',
        description:
            'Monumen Kapal Selam Surabaya merupakan monumen sejarah yang menampilkan kapal selam sungguhan, yakni KRI Pasopati 410.',
        cost: 'Rp.10.000',
        time: '08.00 - 16.00',
        day: 'Open Everyday',
        imageAsset2: 'assets/images/kapal_selam2.jpg',
        imageAsset3: 'assets/images/kapal_selam3.jpg',
        imageAsset4: 'assets/images/kapal_selam4.jpg',
        imageAsset5: 'assets/images/kapal_selam3.jpg'),
    TourismPlace(
        name: 'Kelenteng Sanggar Agung',
        location: 'Kenjeran',
        imageAsset: 'assets/images/kelenteng.jpeg',
        description:
            'Klenteng Sanggar Agung juga dikenal dengan sebutan KLenteng Hong San Tang. Didirikan pada tahun 1999 dan berfungsi sebagai tempat ibadah umat Tri Dharma.',
        cost: 'Rp.15.000',
        time: '10.00 - 19.00',
        day: 'Open Everyday',
        imageAsset2: 'assets/images/kelenteng2.jpeg',
        imageAsset3: 'assets/images/kelenteng3.jpeg',
        imageAsset4: 'assets/images/kelenteng4.jpeg',
        imageAsset5: 'assets/images/kelenteng5.jpeg'),
    TourismPlace(
        name: 'House of Sampoerna',
        location: 'Krembangan Utara',
        imageAsset: 'assets/images/sampoerna.jpeg',
        description:
            'House of Sampoerna adalah sebuah museum tembakau dan markas besar Sampoerna yang terletak di Surabaya. ',
        cost: 'Rp.20.000',
        time: '10.00 - 20.00',
        day: 'Open Everyday',
        imageAsset2: 'assets/images/sampoerna2.jpeg',
        imageAsset3: 'assets/images/sampoerna3.jpeg',
        imageAsset4: 'assets/images/sampoerna4.jpeg',
        imageAsset5: 'assets/images/sampoerna5.jpeg'),
    TourismPlace(
        name: 'Tugu Pahlawan',
        location: 'Alun-alun Contong',
        imageAsset: 'assets/images/tugu_pahlawan.jpeg',
        description:
            'Tugu Pahlawan adalah sebuah monumen yang menjadi markah tanah Kota Surabaya. Tinggi monumen ini adalah 41,15 meter dan berbentuk lingga atau paku terbalik.',
        cost: 'Free',
        time: '24 hours',
        day: 'Open Everyday',
        imageAsset2: 'assets/images/tugu_pahlawan.jpeg',
        imageAsset3: 'assets/images/tugu_pahlawan.jpeg',
        imageAsset4: 'assets/images/tugu_pahlawan.jpeg',
        imageAsset5: 'assets/images/tugu_pahlawan.jpeg'),
    TourismPlace(
        name: 'Patung Suroboyo',
        location: 'Wonokromo',
        imageAsset: 'assets/images/suro_boyo.jpeg',
        description:
            'Patung Sura dan Baya adalah sebuah patung yang merupakan lambang kota Surabaya. Patung ini berada di depan Kebun Binatang Surabaya. Patung ini terdiri atas dua hewan yaitu buaya dan hiu yang menjadi inspirasi nama kota Surabaya: ikan sura dan baya.',
        cost: 'Free',
        time: '24 hours',
        day: 'Open Everyday',
        imageAsset2: 'assets/images/suro_boyo.jpeg',
        imageAsset3: 'assets/images/suro_boyo.jpeg',
        imageAsset4: 'assets/images/suro_boyo.jpeg',
        imageAsset5: 'assets/images/suro_boyo.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final TourismPlace place = tourismPlaceList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(place: place);
            }));
          },
          child: Consumer<DoneTourismProvider>(
            builder: (context, DoneTourismProvider data, widget) {
              return ListItem(
                place: place,
                isDone: data.doneTourismPlaceList.contains(place),
                onCheckboxClick: (bool? value) {
                  setState(() {
                    if (value != null) {
                      value
                          ? data.doneTourismPlaceList.add(place)
                          : data.doneTourismPlaceList.remove(place);
                    }
                  });
                },
              );
            },
          ),
        );
      },
      itemCount: tourismPlaceList.length,
    );
  }
}
