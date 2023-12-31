import 'dart:math';

enum RegisteredAirlines {
  GarudaIndonesia,
  DicodingAir,
}

class TravelHistory {
  final int? id;
  final String? route;
  final String? flightNumber;
  final String? date;
  final RegisteredAirlines? airline;
  final int? miles;

  TravelHistory({
    this.id,
    this.miles,
    this.route,
    this.flightNumber,
    this.date,
    this.airline,
  });

  static List<TravelHistory> generateRandomTravelHistory([int count = 10]) {
    List<TravelHistory> list = [];

    // list of a cities
    List cityFrom = ['Celebrity Fitness', 'Fitness First', 'Fitnes Hub', 'Golds Gym'];
    List cityTo = ['JKT', 'SBY', 'BDG', 'JOG', 'SMGs'];

    // generate here
    for (var i = 0; i < count; i++) {
      list.add(
        TravelHistory(
          id: i,
          route:
              '${cityFrom[Random().nextInt(cityFrom.length)]}-${cityTo[Random().nextInt(cityTo.length)]}',
          date:
              '${Random().nextInt(31).toString().padLeft(2, '0')} September 2022 - ${Random().nextInt(12).toString().padLeft(2, '0')}:00 PM',
          flightNumber:
              "${(i % 2 == 0) ? 'FF-' : 'CF-'}${Random().nextInt(100).toString().padLeft(3, '0')}",
          airline: (i % 2 == 0)
              ? RegisteredAirlines.GarudaIndonesia
              : RegisteredAirlines.DicodingAir,
          miles: Random().nextInt(300),
        ),
      );
    }

    return list;
  }
}
