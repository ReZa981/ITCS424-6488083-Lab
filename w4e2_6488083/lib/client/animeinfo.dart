import 'package:flutter/material.dart';
import '../theme.dart';
import '../shared/DefaultLayout.dart';

class AnimeInfoPage extends StatelessWidget {
  const AnimeInfoPage({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultLayout(pagecontent: AnimeInfo());
  }
}

class AnimeInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
