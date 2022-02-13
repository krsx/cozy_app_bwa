import 'package:cozy_app/page/error_page.dart';
import 'package:cozy_app/theme.dart';
import 'package:cozy_app/widget/fasility_item.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    launchUrl(String url) async {
      if (await canLaunch(url)) {
        launch(url);
      } else {
        // throw (url);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ErrorPage()));
      }
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
              "assets/images/images_detail1.png",
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                SizedBox(
                  height: 328,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: padding_vertical,
                        ),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Kuretakeso Hott",
                                  style: blackTextStyle.copyWith(
                                    fontSize: 22,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: "\$52",
                                    style: purpleTextStyle.copyWith(
                                      fontSize: 16,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: " / month",
                                        style: greyTextStyle.copyWith(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  "assets/images/icon_star.png",
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  "assets/images/icon_star.png",
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  "assets/images/icon_star.png",
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  "assets/images/icon_star.png",
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  "assets/images/icon_star.png",
                                  width: 20,
                                  color: greyColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
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
                        height: 12,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: padding_vertical),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FacilityItem(
                              id: 1,
                              name: "kitchen",
                              item: 2,
                              imageUrl: "assets/images/icon_kitchen.png",
                            ),
                            FacilityItem(
                              id: 2,
                              name: "bedroom",
                              item: 3,
                              imageUrl: "assets/images/icon_bedroom.png",
                            ),
                            FacilityItem(
                              id: 3,
                              name: "furniture",
                              item: 3,
                              imageUrl: "assets/images/icon_furniture.png",
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: padding_vertical),
                        child: Text(
                          "Photos",
                          style: regularTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 88,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(
                              width: 24,
                            ),
                            Image.asset(
                              "assets/images/images_photos_space1.png",
                              width: 110,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Image.asset(
                              "assets/images/images_photos_space2.png",
                              width: 110,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Image.asset(
                              "assets/images/images_photos_space3.png",
                              width: 110,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Image.asset(
                              "assets/images/images_photos_space4.png",
                              width: 110,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Image.asset(
                              "assets/images/images_photos_space5.png",
                              width: 110,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 24,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: padding_vertical),
                        child: Text(
                          "Location",
                          style: regularTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: padding_vertical),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Jln. Kappan Sukses No. 20\nPalembang",
                              style: greyTextStyle.copyWith(fontSize: 14),
                            ),
                            InkWell(
                              onTap: () {
                                // launchUrl(
                                //     "https://www.google.co.id/maps/place/Universitas+Gadjah+Mada/@-7.7725828,110.3894056,14.78z/data=!4m5!3m4!1s0x2e7a59b2d4729729:0xac4d7b5fcf34f8e4!8m2!3d-7.7713847!4d110.3774998?hl=id");
                                launchUrl("ssssa");
                              },
                              child: Image.asset(
                                "assets/images/icon_map.png",
                                width: 40,
                                height: 40,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: padding_vertical),
                        height: 50,
                        width: MediaQuery.of(context).size.width -
                            (2 * padding_vertical),
                        child: ElevatedButton(
                          onPressed: () {
                            launchUrl("tel:+6281999354747");
                          },
                          child: Text(
                            "Book Now",
                            style: whiteTextStyle.copyWith(fontSize: 18),
                          ),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17),
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all(purpleColor),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 30,
                horizontal: padding_vertical,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/button_back.png",
                      width: 40,
                    ),
                    Image.asset(
                      "assets/images/button_love.png",
                      width: 40,
                    ),
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
