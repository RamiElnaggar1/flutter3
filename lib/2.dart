import 'package:finalprojet/three.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/dot_animation_enum.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class Tow extends StatefulWidget {
  @override
  _OneState createState() => _OneState();
}

class _OneState extends State<Tow> {
  List<Slide> slides = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    slides.add(
      new Slide(
        title: "Rocket engines",
        description:
            "The company has developed three families of rockst engines",
        pathImage: "assets/images/one.jpg",
      ),
    );
    slides.add(
      new Slide(
        title: "Dragon spacecraft",
        description:
            "Spacex announced plans to pursue a human-rated commercial.",
        pathImage: "assets/images/tow.jpg",
      ),
    );
    slides.add(
      new Slide(
        title: "Launch vehicles",
        description:
            "Falcon 1 was a small capablo of sovoral hundred kilomgrams. ",
        pathImage: "assets/images/one.jpg",
      ),
    );
  }

  List<Widget> renderListCustomTabs() {
    List<Widget> tabs = [];
    for (int i = 0; i < slides.length; i++) {
      Slide currentSlid = slides[i];
      tabs.add(Container(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          margin: EdgeInsets.only(bottom: 160, top: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Image.asset(
                  currentSlid.pathImage,
                  matchTextDirection: true,
                  height: 60,
                ),
              ),
              Container(
                child: Text(
                  currentSlid.title,
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Text(
                  currentSlid.description,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
                margin: EdgeInsets.only(
                  top: 15,
                  left: 20,
                  right: 20,
                ),
              ),
            ],
          ),
        ),
      ));
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      backgroundColorAllSlides: Colors.black,
      renderSkipBtn: Text("Skip"),
      renderNextBtn: Text("Next"),
      renderDoneBtn: Text("Done"),
      colorDot: Colors.white,
      colorActiveDot: Colors.white,
      sizeDot: 8.0,
      typeDotAnimation: dotSliderAnimation.SIZE_TRANSITION,
      listCustomTabs: this.renderListCustomTabs(),
      scrollPhysics: BouncingScrollPhysics(),
      hideStatusBar: false,
    onDonePress: ()=> Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context)=>Three()), (route) => false)
    );
  }
}
