import 'dart:ui';

import 'package:dicoding_final/models/m_travel_tips.dart';
import 'package:dicoding_final/widgets/journal_reaction.dart';
import 'package:flutter/material.dart';

class PageArticle extends StatefulWidget {
  final TravelTips? data;

  const PageArticle({
    Key? key,
    this.data,
  }) : super(key: key);

  @override
  _PageArticleState createState() => _PageArticleState();
}

class _PageArticleState extends State<PageArticle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                  height: 230,
                  child: Stack(
                    children: [
                      Container(
                        height: 220,
                        width: MediaQuery.of(context).size.width,
                        child: Image.network(
                          widget.data!.imageURL.toString(),
                          fit: BoxFit.cover,
                        ),
                      ),
                      BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                        child: Container(
                          height: 220,
                          color: Colors.black.withOpacity(0.4),
                          width: MediaQuery.of(context).size.width,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  icon: Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                              ).copyWith(top: 90),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.data!.title.toString(),
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .headline3!
                                        .copyWith(
                                      color: Colors.white,
                                      shadows: [
                                        Shadow(
                                          blurRadius: 10,
                                          color: Colors.black,
                                        )
                                      ],
                                    ),
                                  ),
                                  Text(
                                    widget.data!.date.toString(),
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .headline5!
                                        .copyWith(
                                      fontSize: 16,
                                      shadows: [
                                        Shadow(
                                          blurRadius: 10,
                                          color: Colors.black,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 25,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              'Like This Article?',
                              style: Theme.of(context)
                                  .primaryTextTheme
                                  .headline4!
                                  .copyWith(color: Colors.black54),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                JournalReaction(),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.report),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Divider(),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 25,
                  ),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras lobortis turpis vel enim auctor mollis. Sed suscipit sodales pretium. Vivamus rhoncus libero in tincidunt auctor. Maecenas vel lacinia turpis. Nam venenatis risus quis urna dignissim, id porttitor lectus dignissim. Sed mauris turpis, pellentesque a justo id, interdum convallis lacus. Duis eu finibus tellus, in interdum felis. Sed id turpis ut mauris dapibus varius. Nam sapien nisl, placerat ultrices eros at, pellentesque venenatis lectus. Integer sollicitudin, orci id tincidunt maximus, nisi augue lacinia ligula, non gravida lorem tortor nec arcu. Suspendisse sagittis sapien ex. Nunc in tempus lacus, quis porta sapien. Ut maximus porta eros ut lacinia. Maecenas commodo velit sodales arcu egestas finibus.',
                    style: Theme.of(context)
                        .primaryTextTheme
                        .headline6!
                        .copyWith(color: Colors.black54),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
