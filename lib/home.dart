import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List<String> banners = [
    "assets/images/banner.png",
    "assets/images/banner_2.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customAppBar(),
            searchBar(),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 13.0),
              height: 155.0,
              //color: Colors.white,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: banners.length,
                itemBuilder: (context, index) {
                  return Container(
                      width: 313,
                      height: 163.0,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(10, 0),
                              blurRadius: 1.0,
                              spreadRadius: 2.0,
                              color: Colors.grey)
                        ],
                      ),
                      child: Image.asset(
                        banners[index],
                        fit: BoxFit.fill,
                      ));
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
              child: Text(
                "Category",
                style: TextStyle(
                    color: Color(0xff393F42),
                    fontSize: 17.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              height: 50.0,
              color: Colors.red,
              child: Row(
                children: [],
              ),
            )
          ],
        ));
  }
}

customAppBar() {
  return Container(
    width: 500.0,
    height: 100.0,
    //color: Colors.white,
    margin: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Delivery address",
                style: TextStyle(
                    color: Color(0xffC8C8CB),
                    fontSize: 13.0,
                    fontWeight: FontWeight.w400)),
            Row(
              children: const [
                Text(
                  "Salatiga City, Central Java",
                  style: TextStyle(
                      color: Color(0xff393F42),
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Icon(Icons.keyboard_arrow_down_outlined)
              ],
            )
          ],
        ),
        Container(
          width: 100.0,
          height: 50.0,
          alignment: Alignment.bottomRight,
          // color: Colors.green,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Stack(
                children: [
                  Image.asset("assets/images/buy.png"),
                  Positioned(
                    bottom: 13.0,
                    right: 0.0,
                    child: Image.asset("assets/images/two.png"),
                  )
                ],
              ),
              Image.asset("assets/images/notification.png"),
            ],
          ),
        )
      ],
    ),
  );
}

searchBar() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
    width: 500.0,
    height: 50.0,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        //color: Colors.red,
        border: Border.all(width: 2.0, color: const Color(0xffF0F2F1))),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/search.png"),
          const SizedBox(
            width: 10.0,
          ),
          const Text(
            "Search here...",
            style: TextStyle(color: Color(0xffC8C8CB), fontSize: 15.0),
          )
        ],
      ),
    ),
  );
}

categoryList(String url, String text) {
  return Column(
    children: [Image.asset(url), Text(text)],
  );
}
