import 'package:flutter/material.dart';

class JournalCard extends StatefulWidget {
  final String? title;
  final String? date;
  final String? imageURL;
  final Function()? onTap;

  const JournalCard({
    Key? key,
    required this.title,
    this.date,
    this.imageURL,
    this.onTap,
  }) : super(key: key);

  @override
  _JournalCardState createState() => _JournalCardState();
}

class _JournalCardState extends State<JournalCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: InkWell(
        onTap: widget.onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 130,
              width: MediaQuery.of(context).size.width - 80,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                ),
                image: DecorationImage(
                  image: NetworkImage(
                    widget.imageURL.toString(),
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width - 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    widget.date.toString(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
