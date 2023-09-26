import 'dart:ui';

import 'package:dicoding_final/models/m_leaderbord.dart';
import 'package:dicoding_final/models/m_travel_history.dart';
import 'package:dicoding_final/models/m_travel_tips.dart';
import 'package:dicoding_final/pages/page_article.dart';
import 'package:dicoding_final/widgets/journal_card.dart';
import 'package:dicoding_final/widgets/journal_card_simple.dart';
import 'package:flutter/material.dart';

class PageUtama extends StatefulWidget {
  const PageUtama({Key? key}) : super(key: key);

  @override
  PageUtamaState createState() => PageUtamaState();
}

class PageUtamaState extends State<PageUtama> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrain) {
      if (constrain.maxWidth <= 1000) {
        return MobileView();
      } else {
        return WebView();
      }
    });
  }
}

class WebView extends StatefulWidget {
  const WebView({Key? key}) : super(key: key);

  @override
  _WebViewState createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  final _scrollController = ScrollController(initialScrollOffset: 0);

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                height: 400,
                color: Colors.black12,
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        'assets/images/intro.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                      child: Container(
                        color: Colors.black.withOpacity(0.3),
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.04,
                      ).copyWith(top: 10),
                      height: 300,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.flight_takeoff,
                                      color: Colors.blue),
                                  SizedBox(width: 10),
                                  Text(
                                    'Aviation Journal',
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .headline3!
                                        .copyWith(
                                      shadows: [
                                        Shadow(
                                          blurRadius: 5,
                                          color: Colors.black,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                    onPressed: null,
                                    icon: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: null,
                                    icon: Icon(
                                      Icons.notifications_none_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        maxRadius: 18,
                                        backgroundColor: Colors.blue,
                                        child: Icon(
                                          Icons.person,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        'Acesam',
                                        style: Theme.of(context)
                                            .primaryTextTheme
                                            .headline4!
                                            .copyWith(
                                          shadows: [
                                            Shadow(
                                              blurRadius: 5,
                                              color: Colors.black,
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 100),
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text(
                                  'Record Your Flight Journey',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .headline3!
                                      .copyWith(
                                    fontSize: 40,
                                    shadows: [
                                      Shadow(
                                        blurRadius: 5,
                                        color: Colors.black,
                                      )
                                    ],
                                  ),
                                ),
                                Text(
                                  'Because every calories count!',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .headline4!
                                      .copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    shadows: [
                                      Shadow(
                                        blurRadius: 5,
                                        color: Colors.black,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.04,
                ).copyWith(top: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 50,
                        ),
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 50),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'NEXT FLIGHT',
                                      style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    SizedBox(height: 40),
                                    CircleAvatar(
                                      backgroundImage: AssetImage(
                                        'assets/images/logo-ff.jpg',
                                      ),
                                      radius: 70,
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      'Fitness First',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    Text(
                                      'PL-022',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      'FF - JKT',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '10 July 2021 - 02:30 PM',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 30,
                                        vertical: 20,
                                      ),
                                      child: Divider(),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              '100',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              'POTENTIAL MILES',
                                              style: TextStyle(fontSize: 15),
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: 20),
                                        Column(
                                          children: [
                                            Text(
                                              '1746',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              'TOTAL MILES',
                                              style: TextStyle(fontSize: 15),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Healthy Travel Tips',
                              style: Theme.of(context)
                                  .primaryTextTheme
                                  .headline3!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 25,
                                  ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              height: 500,
                              child: GridView.count(
                                crossAxisSpacing: 4,
                                mainAxisSpacing: 4,
                                crossAxisCount: 3,
                                children:
                                    TravelTips.generateRandomTravelTips(15)
                                        .map(
                                          (item) => JournalCard(
                                            key: ValueKey(item.id),
                                            title: item.title,
                                            date: item.date,
                                            imageURL: item.imageURL,
                                            onTap: () {
                                              // parameter yang dikirimkan ke page artikel

                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                  builder: (_) => PageArticle(
                                                    data: item,
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        )
                                        .toList(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MobileView extends StatelessWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // default coming soon message
    void alertComingSoonMessage() {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Stay tune, this feature is coming soon.'),
          behavior: SnackBarBehavior.floating,
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                  height: 290,
                  child: Stack(
                    children: [
                      Container(
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                        child: ShaderMask(
                          shaderCallback: (rect) {
                            return LinearGradient(
                              begin: Alignment.center,
                              end: Alignment.bottomCenter,
                              colors: [Colors.black, Colors.transparent],
                            ).createShader(
                              Rect.fromLTRB(0, 0, rect.width, 250),
                            );
                          },
                          blendMode: BlendMode.dstIn,
                          child: Image.asset(
                            'assets/images/push-up.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20)
                            .copyWith(top: 15),
                        height: 280,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                  onPressed: alertComingSoonMessage,
                                  icon: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                                IconButton(
                                  onPressed: alertComingSoonMessage,
                                  icon: Icon(
                                    Icons.notifications_none_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                                IconButton(
                                  onPressed: alertComingSoonMessage,
                                  icon: Icon(
                                    Icons.help_outline,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    maxRadius: 18,
                                    backgroundColor: Colors.blue,
                                    child: Icon(
                                      Icons.person,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Good Morning,',
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .headline4!
                                        .copyWith(
                                      shadows: [
                                        Shadow(
                                          blurRadius: 5,
                                          color: Colors.black,
                                        )
                                      ],
                                    ),
                                  ),
                                  Text(
                                    'Acesam',
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .headline3!
                                        .copyWith(
                                      shadows: [
                                        Shadow(
                                          blurRadius: 5,
                                          color: Colors.black,
                                        )
                                      ],
                                    ),
                                  ),
                                  Text(
                                    'PowerLifter',
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .headline5!
                                        .copyWith(
                                      fontWeight: FontWeight.bold,
                                      shadows: [
                                        Shadow(
                                          blurRadius: 5,
                                          color: Colors.black,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Container(
                              height: 90,
                              width: MediaQuery.of(context).size.width,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                ),
                                elevation: 3.0,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: 30,
                                        ),
                                        child: Row(
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                CircleAvatar(
                                                  backgroundImage: AssetImage(
                                                    'assets/images/ff.png',
                                                  ),
                                                  radius: 23,
                                                ),
                                                Text(
                                                  'PL-022',
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(width: 25),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'NEXT CLASS',
                                                  style: TextStyle(
                                                    fontSize: 11,
                                                    color: Colors.blue,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  '372 Calories',
                                                  style: TextStyle(
                                                    fontSize: 9,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                Text(
                                                  'UPPER BODY (Shoulder)',
                                                  style: Theme.of(context)
                                                      .primaryTextTheme
                                                      .headline4!
                                                      .copyWith(
                                                        color: Colors.black,
                                                      ),
                                                ),
                                                SizedBox(height: 5),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      '21 June 2021',
                                                      style: TextStyle(
                                                        fontSize: 11,
                                                      ),
                                                    ),
                                                    SizedBox(width: 5),
                                                    Text(
                                                      '10:15 WIB',
                                                      style: TextStyle(
                                                        fontSize: 11,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Row(
                                        children: [
                                          VerticalDivider(
                                            indent: 10,
                                            endIndent: 10,
                                            thickness: 2,
                                          ),
                                          SizedBox(width: 10),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Burned Calories',
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.blue,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                '3 Days row',
                                                style: TextStyle(
                                                  fontSize: 9,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                '1238 Cals',
                                                style: Theme.of(context)
                                                    .primaryTextTheme
                                                    .headline4!
                                                    .copyWith(
                                                      color: Colors.black,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // Container(
                //   padding: EdgeInsets.symmetric(horizontal: 25),
                //   child: Column(
                //     children: [
                //       // Row(
                //       //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       //   children: [
                //       //     Text(
                //       //       'Leaderboard',
                //       //       style: Theme.of(context)
                //       //           .primaryTextTheme
                //       //           .headline4!
                //       //           .copyWith(color: Colors.black54),
                //       //     ),
                //       //     TextButton(
                //       //       onPressed: alertComingSoonMessage,
                //       //       child: Text(
                //       //         'See All',
                //       //         style: Theme.of(context)
                //       //             .primaryTextTheme
                //       //             .headline5!
                //       //             .copyWith(color: Colors.blue),
                //       //       ),
                //       //     ),
                //       //   ],
                //       // ),
                //       Container(
                //         height: 80,
                //         child: ListView.builder(
                //           scrollDirection: Axis.horizontal,
                //           itemBuilder: (_, index) {
                //             List<Leaderboard> data =
                //                 Leaderboard.generateRandomLeaderboard(8);
                //             // urutkan dengan miles terbanyak
                //             data.sort(
                //               (a, b) => b.miles!.compareTo(a.miles!),
                //             );

                //             return Padding(
                //               padding: EdgeInsets.symmetric(horizontal: 10),
                //               child: Column(
                //                 children: [
                //                   CircleAvatar(
                //                     maxRadius: 25,
                //                     backgroundColor:
                //                         data[index].backgroundColor,
                //                     child: Icon(
                //                       Icons.person,
                //                       color: Colors.white,
                //                       size: 25,
                //                     ),
                //                   ),
                //                   Text(
                //                     data[index].name.toString(),
                //                     style:
                //                         TextStyle(fontWeight: FontWeight.bold),
                //                   ),
                //                   Text(
                //                     "${data[index].miles} Miles",
                //                     style: TextStyle(
                //                       fontWeight: FontWeight.bold,
                //                       fontSize: 10,
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             );
                //           },
                //           itemCount:
                //               Leaderboard.generateRandomLeaderboard(8).length,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                 Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Workout Challenges',
                            style: Theme.of(context)
                                .primaryTextTheme
                                .headline4!
                                .copyWith(color: Colors.black54),
                          ),
                          TextButton(
                            onPressed: alertComingSoonMessage,
                            child: Text(
                              'See All',
                              style: Theme.of(context)
                                  .primaryTextTheme
                                  .headline5!
                                  .copyWith(color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 205,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, index) {
                            List<TravelTips> data =
                                TravelTips.generateRandomTravelTips(5);
                            return JournalCard(
                              key: ValueKey(data[index].id),
                              title: data[index].title,
                              date: data[index].date,
                              imageURL: data[index].imageURL,
                              onTap: () {
                                // parameter yang dikirimkan ke page artikel

                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (_) => PageArticle(
                                      data: data[index],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          itemCount:
                              TravelTips.generateRandomTravelTips(5).length,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Workout Events',
                            style: Theme.of(context)
                                .primaryTextTheme
                                .headline4!
                                .copyWith(color: Colors.black54),
                          ),
                          TextButton(
                            onPressed: alertComingSoonMessage,
                            child: Text(
                              'See All',
                              style: Theme.of(context)
                                  .primaryTextTheme
                                  .headline5!
                                  .copyWith(color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 200,
                        child: ListView.builder(
                          itemBuilder: (_, index) {
                            List<TravelHistory> data =
                                TravelHistory.generateRandomTravelHistory(5);

                            return JournalCardSimple(
                              key: ValueKey(data[index].id),
                              route: data[index].route,
                              ariline: data[index].airline,
                              fligthNumber: data[index].flightNumber,
                              date: data[index].date,
                              milesCount: data[index].miles!.toInt(),
                            );
                          },
                          itemCount:
                              TravelHistory.generateRandomTravelHistory(5)
                                  .length,
                        ),
                      ),
                    ],
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
