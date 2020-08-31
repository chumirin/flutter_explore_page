import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_explore_page/models/explore_icon_widget.dart';
import 'models/constants.dart';
class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Explore Page"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(flex: 3, child: topSectionIcons()),
            Expanded(flex: 5, child: bottomSection())
          ],
        ));
  }

  topSectionIcons() {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Center(
                child: ExploreIcon(
                  icon: Icons.music_note,
                  text: 'Music',
                  colors: orange,
                  stops: stops,
                ),
              ),
              ExploreIcon(
                icon: Icons.videogame_asset,
                text: 'Gaming',
                colors: blue,
                stops: stops,
              ),
              ExploreIcon(
                icon: Icons.directions_run,
                text: 'Sports',
                colors: green,
                stops: stops,
              ),
              ExploreIcon(
                icon: Icons.face,
                text: 'Beauty',
                colors: pink,
                stops: stops,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ExploreIcon(
                icon: Icons.palette,
                text: 'Art',
                colors: purp,
                stops: stops,
              ),
              ExploreIcon(
                icon: Icons.shopping_basket,
                text: 'Fashion',
                colors: bluepurple,
                stops: stops,
              ),
              ExploreIcon(
                icon: Icons.fitness_center,
                text: 'Fitness',
                colors: greenblue,
                stops: stops,
              ),
              ExploreIcon(
                icon: Icons.fastfood,
                text: 'Food',
                colors: red,
                stops: stops,
              ),
            ],
          ),
        ]);
  }

  bottomSection() {
    final size = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        kToolbarHeight -
        kBottomNavigationBarHeight;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 30),
          child: Container(
              child: Text(
                'Trending',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              )),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          height: 120,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, int index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Container(
                    height: height / 3,
                    width: size / 5,
                    color: Colors.grey,
                  ),
                );
              }),
        ),
        Container(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Reccomended',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            )),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          height: 120,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, int index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Container(
                    height: height / 3,
                    width: size / 5,
                    color: Colors.grey,
                  ),
                );
              }),
        )
      ],
    );
  }
}
