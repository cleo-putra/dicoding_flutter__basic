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
      'https://images.unsplash.com/photo-1503220317375-aaad61436b1b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
    ];

    // generate here
    for (var i = 0; i < count; i++) {
      list.add(
        TravelTips(
          id: i,
          title: 'Travel Tips No. ${i + 1}',
          imageURL: listImages[Random().nextInt(listImages.length)],
          date:
              '${Random().nextInt(31).toString().padLeft(2, '0')} July 2021 - ${Random().nextInt(12).toString().padLeft(2, '0')}:00 PM',
        ),
      );
    }

    return list;
  }
}
