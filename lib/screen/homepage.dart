import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {},
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(8),
            child: IconButton(
              icon: Icon(
                Icons.filter,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {},
            ),
          )
        ],
        elevation: 5,
        centerTitle: true,
        title: Text(
          "Home",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                childAspectRatio: 2.9 / 1,
                shrinkWrap: true,
                mainAxisSpacing: 14,
                children: [
                  gridViewList(Color.fromRGBO(0, 139, 255, 1),
                      Icons.fire_extinguisher, "Popularity"),
                  gridViewList(Color.fromRGBO(132, 92, 238, 1),
                      Icons.calendar_today, "End Date"),
                  gridViewList(Color.fromRGBO(255, 72, 88, 1),
                      Icons.video_collection, "Newest"),
                  gridViewList(Color.fromRGBO(255, 186, 0, 1),
                      Icons.money_off_csred, "Most Fubded"),
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Recommened",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16)),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 2,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://www.sos-childrensvillages.org/getmedia/fa2c4b51-53f0-41f7-9570-fd5ebf354f75/Sponsor-a-child-555x300.jpg"),
                            ),
                          ),
                        ),
                        Container(
                            child: Padding(
                          padding:
                              EdgeInsets.only(top: 20, left: 18, right: 20),
                          child: Text(
                            "Kids Education",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.white),
                          ),
                        ))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              "224",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Donars",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "\$6000",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Raised Found",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "\$7000",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Need Found",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SliderTheme(
                data: SliderTheme.of(context).copyWith(
                    trackHeight: 4,
                    thumbColor: Colors.redAccent,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0),
                    disabledActiveTickMarkColor:
                        Color.fromRGBO(255, 70, 87, 1)),
                child: Slider.adaptive(
                    max: 100, min: 0, value: 90, onChanged: null))
          ],
        ),
      ),
    );
  }

  Widget gridViewList(color, icon, title) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          )
        ],
      ),
    );
  }
}
