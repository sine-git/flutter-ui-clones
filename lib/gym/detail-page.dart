import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ui_clones/gym/components/duration.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final numbers = [20, 25, 30, 35, 40, 45];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: Icon(Icons.arrow_circle_left_outlined),
        centerTitle: true,
        title: Text("Timer"),
        backgroundColor: Colors.white.withValues(alpha: 0.1),
      ),
      bottomNavigationBar: Container(
        height: 50,
        //color: Colors.pink,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        alignment: Alignment.center,
        child: ElevatedButton(
          onPressed: () {},
          child: Text("Start", style: TextStyle(fontSize: 14)),
          style: ButtonStyle(
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(20),
              ),
            ),
            minimumSize: WidgetStatePropertyAll(
              Size(double.infinity, double.infinity),
            ),
            backgroundColor: WidgetStatePropertyAll(Color(0XFFCCE5E3)),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height * 0.5,
            flexibleSpace: Container(
              foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: AlignmentGeometry.bottomCenter,
                  end: AlignmentGeometry.topCenter,
                  colors: [
                    Color(0XFFCCE5E3),
                    Color(0XFFCCE5E3).withValues(alpha: 0.7),
                    Colors.white.withValues(alpha: 0.1),
                    //.withValues(alpha: 0.2),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                //color: Colors.pink,
                image: DecorationImage(
                  alignment: Alignment.bottomCenter,
                  image: AssetImage('assets/images/woman-headphones.png'),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: AlignmentGeometry.topCenter,
                  end: AlignmentGeometry.bottomCenter,
                  colors: [Color(0XFFCCE5E3), Colors.white],
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text("Rounds", style: TextStyle(fontSize: 16))],
                  ),
                  Container(
                    //color: Colors.pink,
                    alignment: Alignment.center,
                    height: 80,
                    margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                    width: double.infinity,
                    child: CarouselSlider.builder(
                      disableGesture: false,
                      itemCount: numbers.length,
                      itemBuilder: (context, index, realIndex) {
                        final isCurrent = _currentIndex == index;
                        return AnimatedContainer(
                          alignment: Alignment.center,
                          width: 200,
                          height: 120,
                          duration: Duration(milliseconds: 200),
                          //padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isCurrent
                                ? Colors.black
                                : Colors.transparent,
                          ),
                          child: Text(
                            "${numbers[index]}",
                            style: TextStyle(
                              fontSize: 30,
                              color: isCurrent ? Colors.white : Colors.black,
                            ),
                          ),
                        );
                      },
                      options: CarouselOptions(
                        aspectRatio: 2 / 1,
                        initialPage: 0,
                        height: 150, // hauteur du carousel
                        viewportFraction: 0.24,
                        enlargeCenterPage: true, // agrandit l'élément central
                        enableInfiniteScroll: true,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        DurationTile(
                          duration: '2min 25sec',
                          time: 'Rounds time',
                        ),
                        DurationTile(
                          duration: '2min 25sec',
                          time: 'Rounds time',
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
    );
  }
}
