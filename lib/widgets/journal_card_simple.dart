import 'package:dicoding_final/models/m_travel_history.dart';
import 'package:flutter/material.dart';

class JournalCardSimple extends StatefulWidget {
  final String? route;
  final String? fligthNumber;
  final String? date;
  final RegisteredAirlines? ariline;
  final int milesCount;
  final Function()? onTap;

  const JournalCardSimple({
    Key? key,
    required this.route,
    required this.ariline,
    this.date,
    this.onTap,
    this.fligthNumber,
    this.milesCount = 0,
  }) : super(key: key);

  @override
  _JournalCardSimpleState createState() => _JournalCardSimpleState();
}

class _JournalCardSimpleState extends State<JournalCardSimple> {
  String getAirlineLogo() {
    String logo = '';

    switch (widget.ariline!) {
      case RegisteredAirlines.DicodingAir:
        logo = 'assets/images/ff.png';
        break;
      case RegisteredAirlines.GarudaIndonesia:
        logo = 'assets/images/golds.png';
        break;
    }

    return logo;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: InkWell(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  getAirlineLogo(),
                ),
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.fligthNumber.toString(),
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    widget.route.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    widget.date.toString(),
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(right: 30),
              child: Column(
                children: [
                  Text(
                    widget.milesCount.toString(),
                    style: Theme.of(context)
                        .primaryTextTheme
                        .headline3!
                        .copyWith(color: Colors.black),
                  ),
                  Text(
                    'Cals',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
