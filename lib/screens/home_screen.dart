import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kaltak/screens/article_screen.dart';


class HomeScreen extends StatefulWidget {
  static String id = 'home-screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 96, 204, 236),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            //Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back,color: const Color.fromRGBO(26, 33, 48,0))
        ),
        title:
          Text(
            "        Today's News",
            style: const  TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //------------------ ARTICLE - 1 --------------
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context)=> ArticleScreen(title:'article1',image: 'image1',))
                  );
                },
                child: Container(
                  height: 200,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 15,
                        blurStyle: BlurStyle.solid,
                        color: Colors.blueGrey
                      )
                    ]
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Global COVID-19 Vaccination Drive',
                          style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Countries worldwide accelerate COVID-19 vaccination efforts to achieve widespread .....',
                          style: TextStyle(fontSize: 20,color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            //      2 
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context)=> ArticleScreen(title:'article2',image: 'image2',))
                  );
                },
                child: Container(
                  height: 200,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 15,
                        blurStyle: BlurStyle.solid,
                        color: Colors.blueGrey
                      )
                    ]
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Mars Rover's Ancient River Discovery",
                          style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Major tech companies confront heightened regulatory scrutiny globally....',
                          style: TextStyle(fontSize: 20,color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),

            // 3

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context)=> ArticleScreen(title:'article3',image: 'image3',))
                  );
                },
                child: Container(
                  height: 200,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 15,
                        blurStyle: BlurStyle.solid,
                        color: Colors.blueGrey
                      )
                    ]
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Tech Giants Face Regulatory Challenges',
                          style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "NASA's Perseverance rover uncovers compelling evidence of an ancient riverbed on Mars....",
                          style: TextStyle(fontSize: 20,color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),

            // 4

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context)=> ArticleScreen(title:'article4',image: 'image4',))
                  );
                },
                child: Container(
                  height: 200,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 15,
                        blurStyle: BlurStyle.solid,
                        color: Colors.blueGrey
                      )
                    ]
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Climate Action Summit 2024 Commitments',
                          style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'At the Climate Action Summit 2024, world leaders pledge ambitious commitments to ....',
                          style: TextStyle(fontSize: 20,color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),

            // 5

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context)=> ArticleScreen(title:'article5',image: 'image5',))
                  );
                },
                child: Container(
                  height: 200,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 15,
                        blurStyle: BlurStyle.solid,
                        color: Colors.blueGrey
                      )
                    ]
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Economic Recovery Amid Supply Chain Disruptions',
                          style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Global economies navigate recovery paths.....',
                          style: TextStyle(fontSize: 20,color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}