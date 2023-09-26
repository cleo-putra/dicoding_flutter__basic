import 'dart:math';

class TravelTips {
  final int? id;
  final String? title;
  final String? imageURL;
  final String? date;

  TravelTips({
    this.id,
    this.title,
    this.imageURL,
    this.date,
  });

  static List<TravelTips> generateRandomTravelTips([int count = 10]) {
    List<TravelTips> list = [];

    // color list
    final List<String> listImages = [
      'https://images.pexels.com/photos/1552242/pexels-photo-1552242.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    ];

    // generate here
    for (var i = 0; i < count; i++) {
      list.add(
        TravelTips(
          id: i,
          title: 'Workout Tips No. ${i + 1}',
          imageURL: listImages[Random().nextInt(listImages.length)],
          date:
              '${Random().nextInt(31).toString().padLeft(2, '0')} August 2022 ',
        ),
      );
    }

    return list;
  }
}
