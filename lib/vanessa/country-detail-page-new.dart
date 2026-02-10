import 'package:country_flags/country_flags.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_clones/vanessa/widgets/tour-item.dart';

class CountryDetailPageNew extends StatefulWidget {
  const CountryDetailPageNew({super.key});

  @override
  State<CountryDetailPageNew> createState() => _CountryDetailPageNewState();
}

class _CountryDetailPageNewState extends State<CountryDetailPageNew> {
  List<Map<String, dynamic>> upcomingTours = [
    {
      "imageUrl":
          "https://www.travelandleisure.com/thmb/ip03-TS_bwMVg8elPNZ8pKaEOO8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/mt-fuji-japan-MOSTBEAUTIFUL0921-413f7d67bb4f4539a336ebba14f74ed2.jpg",
      "name": "Bali Escape",
      "days": "5 days",
      "price": "850",
      "rating": "4.8",
      "reviews": "10 000",
    },
    {
      "imageUrl":
          "https://wanderlustcrew.com/wp-content/uploads/2023/03/Most-Beautiful-Places-in-Japan-Kawaguchi-View-of-Mt-Fuji.jpeg",
      "name": "Paris Getaway",
      "days": "3 days",
      "price": "620",
      "rating": "4.6",
      "reviews": "16 000",
    },
    {
      "imageUrl":
          "https://imsogoldencom.wordpress.com/wp-content/uploads/2021/01/japan-featured-image-1.jpg",
      "name": "Santorini Trip",
      "days": "4 days",
      "price": "980",
      "rating": "4.9",
      "reviews": "20 000",
    },
    {
      "imageUrl":
          "https://res.cloudinary.com/jerrick/image/upload/v1677792875/6401166a5a8d77001c043187.jpg",
      "name": "Dubai Luxury",
      "days": "6 days",
      "price": "1400",
      "rating": "4.7",
      "reviews": "12 000",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            //pinned: true,
            //floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://www.atlasandboots.com/wp-content/uploads/2019/05/ama-dablam2-most-beautiful-mountains-in-the-world.jpg',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            expandedHeight: MediaQuery.of(context).size.height * 0.3,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 20,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Color(0xffF5F6F8),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: Container(
                  width: 60,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Colors.grey.withValues(alpha: 0.4),

                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            leading: IconButton.filled(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Color(0xffF5F6F8)),
              ),
              icon: Icon(Icons.arrow_back),
            ),

            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 2),
                child: IconButton.filled(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Color(0xffF5F6F8)),
                  ),
                  icon: Icon(Icons.favorite_outline),
                ),
              ),
            ],
          ),
          /*  SliverToBoxAdapter(
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 10),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Color(0xffF5F6F8),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),

              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [],
                ),
              ),
            ),
          ), */
          SliverToBoxAdapter(child: _buildTitle()),
          SliverToBoxAdapter(child: _buildReviews()),
          SliverToBoxAdapter(child: _buildDescription()),
          SliverToBoxAdapter(child: _buildUpcomingTours()),
          SliverToBoxAdapter(child: _buildUpcomingTours()),
          SliverToBoxAdapter(child: _buildUpcomingTours()),
          SliverToBoxAdapter(child: _buildUpcomingTours()),
          SliverToBoxAdapter(child: _buildUpcomingTours()),
          SliverToBoxAdapter(child: _buildUpcomingTours()),
          SliverToBoxAdapter(child: _buildUpcomingTours()),
          SliverToBoxAdapter(child: _buildUpcomingTours()),
        ],
      ),
    );
  }

  _buildTitle() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Rio de Janeiro",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            decoration: BoxDecoration(
              border: Border.all(width: 0.7, color: Color(0xffE1E2E4)),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.star_outline, color: Colors.black, size: 12),
                Text('5.0', style: TextStyle(color: Colors.black)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _buildReviews() {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: CountryFlag.fromCountryCode(
          'BRA',
          theme: ImageTheme(shape: Circle()),
        ),
      ),
      title: Text("Brazil", style: TextStyle(fontWeight: FontWeight.w400)),
      trailing: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: RichText(
          text: TextSpan(
            text: '143 ',
            style: TextStyle(
              fontSize: 14,
              decoration: TextDecoration.underline,
              color: Colors.black,
            ),
            children: [TextSpan(text: 'reviews')],
          ),
        ),
      ),
    );
  }

  _buildDescription() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
          ),
          Text(
            "Read more",
            style: TextStyle(decoration: TextDecoration.underline),
          ),
        ],
      ),
    );
  }

  _buildUpcomingTours() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        clipBehavior: Clip.none,
        padding: EdgeInsets.only(left: 16),
        width: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Upcoming tours",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Text(
                    "See all",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),

            Container(
              height: 300,
              child: ListView.separated(
                //shrinkWrap: true,
                primary: false,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => SizedBox(width: 10),
                itemCount: upcomingTours.length,
                itemBuilder: (context, index) => TourItem(
                  imageUrl: upcomingTours[index]['imageUrl'],
                  name: upcomingTours[index]['name'],
                  days: upcomingTours[index]['days'],
                  price: upcomingTours[index]['price'],
                  rating: upcomingTours[index]['rating'],
                  reviews: upcomingTours[index]['reviews'],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
