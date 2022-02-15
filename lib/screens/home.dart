import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vnews/screens/navbar.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: navbar(),
      body: SafeArea(
        child: Container(
            child: ListView(
          children: <Widget>[
            Container(
              height: 57.6,
              margin: EdgeInsets.only(top: 24, left: 20, right: 25, bottom: 39),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 57.6,
                    width: 57.6,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Color(0x080a0928)),
                    child: Builder(
                      builder: (context) => IconButton(
                        icon: Image.asset('assets/images/menu.png'),
                        padding: EdgeInsets.all(18),
                        onPressed: () => Scaffold.of(context).openDrawer(),
                      ),
                    ),
                  ),
                  Container(
                    height: 57.6,
                    width: 57.6,
                    padding: EdgeInsets.all(19),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Color(0x080a0928)),
                    child: Image.asset('assets/images/search.png'),
                  ),
                ],
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 180,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
              items: [
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                          image: AssetImage('assets/images/b.jpg'),
                          fit: BoxFit.cover)),
                )
              ],
            ),
            SizedBox(height: 30),
            Container(
              // height: 57.6,
              // margin: EdgeInsets.only(top: 24, left: 20, right: 25, bottom: 39),
              child: Text("TOP channels"),
            )
          ],
        )),
      ),
    );
  }
}
