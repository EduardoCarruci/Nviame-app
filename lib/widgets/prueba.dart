import 'package:flutter/material.dart';


class Slideshow extends StatefulWidget {
  @override
  _SlideshowState createState() => _SlideshowState();
}

class _SlideshowState extends State<Slideshow> {
  // This will give them 80% width which will allow other slides to appear on the side
  final PageController controller = PageController(viewportFraction: 0.8);

  List<dynamic> data = [
    "assets/polar.jpg",
    "assets/men.jpg",
    "assets/camara.jpg"
  ];
  String activeTag = 'favourites';

  int currentPage = 0;

  @override
  void initState() {
    controller.addListener(() {
      int next = controller.page.round();
      if (currentPage != next) {
        setState(() {
          currentPage = next;
        });
      }
    });
    super.initState();
  }

  Widget _buildStoryPage(String data, bool active) {
    // Animated properties

    final double top = active ? 50 : 100;
    final double height = active ? 0 : 250;
    //no activo
    //print(data);
    return AnimatedContainer(
      height: height,
      margin: EdgeInsets.only(top:top,bottom: 20,right: 10.0),
      duration: Duration(milliseconds: 500),
      curve: Curves.decelerate,
      
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(data),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.green,
          body: Center(
            child: Container(
              width: double.infinity,
              height: 300,
              color: Colors.blue,
              child: PageView.builder(
                controller: controller,
                itemCount: 3,
                itemBuilder: (context, int currentIndex) {
                  bool active = currentIndex == currentPage;
                  //print(data);
                  return _buildStoryPage(data[currentIndex], active);
                },
              ),
            ),
          )),
    );
  }
}
