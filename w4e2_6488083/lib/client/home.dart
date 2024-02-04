import 'package:flutter/material.dart';
import 'theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

List<Map<String, String>> animeList = [
  {
    "animeOriginalName": "Jujutsu Kaisen",
    "animeEngName": "呪術廻戦",
    "animePoster": "jujutsu.png",
    "availablePlatform": "netflix",
  },
  {
    "animeOriginalName": "Solo leveling",
    "animeEngName": "Solo leveling",
    "animePoster": "jujutsu.png",
    "availablePlatform": "netflix",
  },
  // Add more anime maps to the list as needed
];

class _HomePageState extends State<HomePage> {
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
              Padding(padding: EdgeInsets.symmetric(vertical: 20)),
              //anime list
              GridView.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                childAspectRatio: (1 / (300 / 150)),
                controller: ScrollController(keepScrollOffset: false),
                shrinkWrap: true,
                children: List.generate(
                    9,
                    (index) => AnimeCard(
                          animeOriginalName: 'Original Name ${index + 1}',
                          animeEngName: 'English Name ${index + 1}',
                          animePoster:
                              'jujutsu.png', // Make sure this asset exists
                          availablePlatform: 'Platform ${index + 1}',
                        )),
              )
            ],
          )),
    );
  }
}

class AnimeCard extends StatelessWidget {
  final String animeOriginalName;
  final String animeEngName;
  final String animePoster;
  final String availablePlatform;

  const AnimeCard({
    Key? key,
    required this.animeOriginalName,
    required this.animeEngName,
    required this.animePoster,
    required this.availablePlatform,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage('./asset/$animePoster'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              animeOriginalName,
              style: TextStyle(
                fontSize: 10,
                color: Color(ColorPalatte.color['shadow']!),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Text(
              animeEngName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
