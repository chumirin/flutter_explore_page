import 'package:flutter/material.dart';
import 'constants.dart';

class ExploreIcon extends StatelessWidget {
  const ExploreIcon({this.icon, this.text, this.colors, this.stops});

  final IconData icon;
  final String text;
  final List<Color> colors;
  final List<double> stops;


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        kToolbarHeight -
        kBottomNavigationBarHeight;
    return Container(width: size/6,
      height: height/7.5,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.8),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          border: Border.all(width: 2.5, color: Colors.red),
          borderRadius: BorderRadius.all(Radius.circular(18.0))),
      child: Container(
          width: 52,
          height: 64,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  colors: colors,
                  stops: stops
              ) ,
              border: Border.all(width: 2.5, color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(18.0))
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(icon,
                size: 40,),
              Text( text ,style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12
              ),)
            ],
          )
      ),
    );
  }
}
