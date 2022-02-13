import 'package:cozy_app/models/city.dart';
import 'package:cozy_app/models/space.dart';
import 'package:cozy_app/models/tips.dart';
import 'package:cozy_app/widget/bottom_navbar_item.dart';
import 'package:cozy_app/widget/space_card.dart';
import 'package:cozy_app/widget/tips_card.dart';
import 'package:flutter/material.dart';
import 'package:cozy_app/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cozy_app/widget/city_card.dart';
import 'package:cozy_app/providers/space_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var spaceProvider = Provider.of<SpaceProvider>(context);

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        top: false,
        child: ListView(
          // NOTE:TITLE/HEADER
          children: [
            SizedBox(
              height: padding_vertical,
            ),
            Padding(
              padding: EdgeInsets.only(left: padding_vertical),
              child: Text(
                "Explore Now",
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.only(left: padding_vertical),
              child: Text(
                "Mencari kosan yang cozy",
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: padding_vertical),
              child: Text(
                "Popular Cities",
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              // NOTE:POPULAR CITIES
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 24,
                  ),
                  CityCard(
                    city: City(
                      id: 1,
                      name: "Jakarta",
                      imageUrl: "assets/images/images_city1.png",
                      isPopular: false,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    city: City(
                      id: 2,
                      name: "Bandung",
                      imageUrl: "assets/images/images_city2.png",
                      isPopular: true,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    city: City(
                      id: 3,
                      name: "Surbaya",
                      imageUrl: "assets/images/images_city3.png",
                      isPopular: false,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    city: City(
                      id: 4,
                      name: "Palembang",
                      imageUrl: "assets/images/images_city4.png",
                      isPopular: false,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    city: City(
                      id: 5,
                      name: "Aceh",
                      imageUrl: "assets/images/images_city5.png",
                      isPopular: true,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    city: City(
                      id: 6,
                      name: "Bogor",
                      imageUrl: "assets/images/images_city6.png",
                      isPopular: false,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // NOTE:RECOMENDED SPACE
            Padding(
              padding: EdgeInsets.only(left: padding_vertical),
              child: Text(
                "Recommended Space",
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: padding_vertical),
              child: FutureBuilder(
                future: spaceProvider.getRecomendedSpces(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<Space> data = snapshot.data as List<Space>;
                    return Column(
                        children: data.map((item) => SpaceCard(item)).toList());
                  }
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // NOTE:TIPS & GUIDANCE
            Padding(
              padding: EdgeInsets.only(left: padding_vertical),
              child: Text(
                "Tips & Guidance",
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: padding_vertical),
              child: Column(
                children: [
                  TipsCard(
                    tips: Tips(
                      id: 1,
                      imageUrl: "assets/images/images_tips1.png",
                      title: "City Guidelines",
                      updatedAt: "20 Apr",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TipsCard(
                    tips: Tips(
                      id: 2,
                      imageUrl: "assets/images/images_tips2.png",
                      title: "Jakarta Fairship",
                      updatedAt: "11 Dec",
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 70 + padding_vertical,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * padding_vertical),
        margin: EdgeInsets.symmetric(horizontal: padding_vertical),
        decoration: BoxDecoration(
          color: Color(0xffF6F7F8),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: "assets/images/icon_home_color.png",
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: "assets/images/icon_mail.png",
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: "assets/images/icon_card.png",
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: "assets/images/icon_love.png",
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
