import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

final List<Map> myCards =
    List.generate(4, (index) => {"id": index, "name": "My task $index"})
        .toList();

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    var size = mediaQueryData.size;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: CustomScrollView(slivers: [
        SliverAppBar(
          elevation: 0,
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.search),
              ],
            ),
          ],
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              color: Colors.white,
              child: const Material(
                color: Colors.orange,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40)),
              ),
            ),
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: size.height * 0.078,
                  height: size.height * 0.078,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        Colors.orange,
                        Colors.orange,
                        Colors.red,
                        Colors.red
                      ],
                      begin: Alignment.topLeft,
                    ),
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(6.0),
                    decoration: const BoxDecoration(),
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://i.ytimg.com/vi/KbW6MdfefNg/oar2.jpg?sqp=-oaymwEVCJUDENAFSFryq4qpAwcIARUAAIhC&rs=AOn4CLCYIc3vcFJeUdzfteDUzzolUHyZFg"),
                      radius: 30,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Aysenem Yusupova",
                      style: TextStyle(fontSize: size.width * 0.04),
                    ),
                    Text(
                      "Project Manager",
                      style: TextStyle(fontSize: size.width * 0.04),
                    ),
                  ],
                ),
              ],
            ),
          ),
          pinned: true,
          leading: const Icon(Icons.density_medium),
          expandedHeight: size.height * 0.270,
          backgroundColor: Colors.orange,
          systemOverlayStyle:
              const SystemUiOverlayStyle(statusBarColor: Colors.black12),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      "MyTasks",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    SizedBox(
                        height: 80,
                        width: 80,
                        child: FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Colors.teal,
                          child: const Icon(
                            Icons.calendar_today_outlined,
                            size: 36,
                          ),
                        ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      FloatingActionButton(
                        backgroundColor: Colors.red,
                        onPressed: () {},
                        child: const Icon(Icons.timer_outlined),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "To do",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text("5 task  now 1-started")
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      FloatingActionButton(
                        backgroundColor:
                            const Color.fromARGB(255, 215, 106, 10),
                        onPressed: () {},
                        child: const Icon(Icons.timer_outlined),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "To do",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text("5 task  now 1-started")
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      FloatingActionButton(
                        onPressed: () {},
                        child: Icon(Icons.timer_outlined),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "To do",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text("5 task  now 1-started")
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      FloatingActionButton(
                        backgroundColor: Color.fromARGB(255, 215, 106, 10),
                        onPressed: () {},
                        child: Icon(Icons.timer_outlined),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "To do",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text("5 task  now 1-started")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
          ),
        ),
          
              
          SliverGrid.count(
            crossAxisCount: 2,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 3.0,
            childAspectRatio: 0.8,
            children: [
              MyGrid(
                  Colors.teal,
                  const Text(
                    "Daryo uz",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                  const Text(
                    "9 hours progress",
                    style: TextStyle(color: Colors.white),
                  ),
                  const Text("25 %",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  0.25),
              MyGrid(
                  Colors.redAccent,
                  const Text(
                    "NeedFood app",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                  const Text("40 hours progress",
                      style: TextStyle(color: Colors.white)),
                  const Text(
                    "75 %",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  0.75),
              MyGrid(
                  Colors.orangeAccent,
                  const Text(
                    "The task app",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                  const Text("18 hours progress",
                      style: TextStyle(color: Colors.white)),
                  const Text("60 %",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  0.60),
              MyGrid(
                  Colors.blueAccent,
                  const Text(
                    "LAdy Taxi app",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                  const Text("18 hours progress",
                      style: TextStyle(color: Colors.white)),
                  const Text("48 %",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  0.48),
            ],
          ),
        ],
      ),
          );
  
  }
}

Widget MyConytener(Color color, Text text, Text text2, Icon icon){
  return Row(
    children: [
      SizedBox(
        height: 50,
        width: 50,
        child: Material(
          color: color,
          borderRadius: BorderRadius.circular(100),
          child: icon,
        ),
      ),
      const SizedBox(
        width: 12,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [text, text2],
      ),
    ],
  );
}



Widget MyGrid(Color color, Text text, Text text2, Text prisend, double int) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 160,
      height: 240,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(34),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircularPercentIndicator(
            radius: 30,
            center: prisend,
            percent: int,
            backgroundColor: Colors.black12,
            progressColor: Colors.white,
          ),
          const Spacer(),
          text,
          text2,
        ],
      ),
    ),
  );
}



                
            

