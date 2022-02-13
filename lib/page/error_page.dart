import 'package:cozy_app/page/home_page.dart';
import 'package:cozy_app/theme.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/images_404.png",
                width: 300,
              ),
              SizedBox(
                height: 70,
              ),
              Text(
                "Where are you going?",
                style: blackTextStyle.copyWith(fontSize: 24),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Seems like the page that you were \nrequested is already gone",
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 210,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                        (route) => false);
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(purpleColor),
                  ),
                  child: Text(
                    "Back to Home",
                    style: whiteTextStyle.copyWith(fontSize: 18),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
