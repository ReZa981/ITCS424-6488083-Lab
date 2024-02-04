import 'package:flutter/material.dart';
import 'theme.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween, // Add this line
              children: [
                Image.asset(
                  "./asset/logo.png",
                  height: 40,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipOval(
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(15), // Image radius
                          child: Image.asset('./asset/profile.png',
                              fit: BoxFit.cover),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child:
                              Text('guragura', style: TextStyle(fontSize: 16)))
                    ],
                  ),
                ),
              ],
            )),
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Wrap(
            children: [
              //reccommend
              Container(
                width: double.infinity,
                height: 120,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child:
                    Image.asset('./asset/reccommendex.png', fit: BoxFit.cover),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 70)),
              //anime trend and see all
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Image.asset('./asset/trend.png'),
                        Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text('Anime Trend',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700)))
                      ],
                    ),
                  ),
                  Text('see all',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(ColorPalatte.color['link']!)))
                ],
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 70)),
              //anime list
            ],
          )
          // child: ListView(
          //   children: <Widget>[
          //     AnimeCard(
          //       anime_original_name: 'anime_original_name',
          //       anime_eng_name: 'anime_eng_name',
          //       anime_poster: 'jujutsu.png',
          //       available_platform: 'available_platform'
          //     )
          //   ],
          // ),
          ),
    );
  }
}

class AnimeCard extends StatelessWidget {
  final String anime_original_name;
  final String anime_eng_name;
  final String anime_poster;
  final String available_platform;

  AnimeCard({
    Key? key,
    required this.anime_original_name,
    required this.anime_eng_name,
    required this.anime_poster,
    required this.available_platform,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
                './asset/$anime_poster'), // Use the provided anime_poster path
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      anime_original_name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(anime_eng_name),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
