import 'package:flutter/material.dart';
import 'package:flutter_twitter_ui/wigets/follow_text.dart';
import 'package:flutter_twitter_ui/wigets/image_and_text.dart';

void main() => runApp(MyApp());
const DARK_THEME = const Color(0xFF17202A);
const TWITTER_BLUE = const Color(0xFF4D9FEC);
const FONT_GRAY = const Color(0xFF8B99A5);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twitter UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: DARK_THEME),
      home: MyHomePage(title: 'Twitter Dev'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        leading: Image(
          image: AssetImage('assets/img/back.png'),
        ),
        title: Align(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Twitter Dev",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                "3,480件のツイート",
                style: TextStyle(
                  color: FONT_GRAY,
                  fontSize: 13,
                ),
              ),
            ],
          )
        ),
      ),
      body: SingleChildScrollView(
        child:Container(
          color: DARK_THEME,
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 1500,
                    child: Column(
                      children: <Widget>[
                        Image(
                          image: AssetImage('assets/img/twitter-dev.jpeg'),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Column(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 70),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Twitter Dev",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                )
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 6),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "@TwitterDev",
                                    style: TextStyle(
                                      color: FONT_GRAY,
                                      fontSize: 14,
                                    ),
                                  ),
                                )
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "The voice of Twitter\'s ",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "#DevRel ",
                                          style: TextStyle(
                                            color: TWITTER_BLUE,
                                            fontSize: 13,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "team, and your official source for updates, news, & events about Twitter\'s API.",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                          ),
                                        ),
                                      ]
                                    ),
                                  )
                                )
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Need help? Visit ",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "twittercommunity.com\n",
                                          style: TextStyle(
                                            color: TWITTER_BLUE,
                                            fontSize: 13,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "自己紹介を翻訳",
                                          style: TextStyle(
                                            color: TWITTER_BLUE,
                                            fontSize: 13,
                                          ),
                                        ),
                                      ]
                                    ),
                                  )
                                )
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  top: 11
                                ),
                                child: Row(
                                  children: <Widget>[
                                    ImageAndText(
                                      imgName:'location.jpg', 
                                      text:'127.0.0.1',
                                      color: FONT_GRAY,
                                    ),
                                    ImageAndText(
                                      imgName: 'link.jpg',
                                      text: 'developer.twitter.com/en/community',
                                      color: TWITTER_BLUE,
                                    )
                                  ],
                                ),
                              ),
                              ImageAndText(
                                imgName: 'birthday.jpg',
                                text: '誕生日: 3月21日',
                                color: FONT_GRAY,
                              ),
                              ImageAndText(
                                imgName: 'calendar.jpg',
                                text: '2013年12月からTwitterを利用しています',
                                color: FONT_GRAY,
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Row(
                                  children: <Widget>[
                                    FollowText(
                                      boldText: "1,708",
                                      text: "フォロー中",
                                    ),
                                    FollowText(
                                      boldText: "50.6万",
                                      text: "フォロワー",
                                    )
                                  ],
                                )
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 6,
                            left: 20
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "フォローしている人にフォロワーはいません",
                              style: TextStyle(
                                color: FONT_GRAY,
                                fontSize: 13,
                              ),
                            ),
                          )
                        ),
                        DefaultTabController(
                          length: 4,
                          child: SizedBox(
                            height: 100.0,
                            child: Column(
                              children: <Widget>[
                                TabBar(
                                  tabs: <Widget>[
                                    Tab(
                                      text: "ツイート",
                                    ),
                                    Tab(
                                      text: "ツイートと返信",
                                    ),
                                    Tab(
                                      text: "メディア",
                                    ),
                                    Tab(
                                      text: "いいね",
                                    )
                                  ],
                                ),
                                Expanded(
                                  child: TabBarView(
                                    children: <Widget>[
                                      Container(
                                        color: DARK_THEME,
                                      ),
                                      Container(
                                        color: DARK_THEME,
                                      ),
                                      Container(
                                        color: DARK_THEME,
                                      ),
                                      Container(
                                        color: DARK_THEME,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 100.0,
                    left: 20.0,
                    child: Container(
                      width: 83.0,
                      height: 83.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: DARK_THEME),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/img/twitter-icon.jpg'),
                        )
                      ),
                    ),
                  ),
                  Positioned(
                    top: 140.0,
                    right: 20.0,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 38.0,
                          height: 38.0,
                          decoration: BoxDecoration(
                            border: Border.all(color: TWITTER_BLUE),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/img/setting.png'),
                            )
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 8),
                          width: 87.0,
                          height: 38.0,
                          decoration: BoxDecoration(
                            border: Border.all(color: TWITTER_BLUE),
                            borderRadius: BorderRadius.all(Radius.circular(40))
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "フォロー",
                              style: TextStyle(
                                color: TWITTER_BLUE,
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                              )
                            ),
                          )
                        ),
                      ],
                    )
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Image(
          image: AssetImage('assets/img/twitter-button.jpg'),
        ),
        backgroundColor: TWITTER_BLUE,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: DARK_THEME,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.mail,
              color: Colors.white,
            ),
            title: Text(""),
          ),
        ],
      ),
    );
  }
}
