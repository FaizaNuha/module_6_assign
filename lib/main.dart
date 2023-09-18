import 'package:flutter/material.dart';

void main() {
  runApp(
      MyApp()); //runApp its a method entry point of  the application and its demands a widget MyApp is a class became widget by extending Stateless abstruct class for whitch its need to override build method
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {

  MySnackBar(massage, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(massage)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Photo Gallery",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Scrollbar(
        thumbVisibility: true,
        trackVisibility: true,
        thickness: 10,

        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                    width: 70,
                    height: 30,
                    child: ListView(children: [
                      Text(
                        'Welcome to My Photo Gallery!',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ]))),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search for photos...',
                    border: OutlineInputBorder()),
              ),
            ),

            Scrollbar(
              child: Container(
                child: SizedBox(
                  height: 300,
                  child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 1.0,
                      mainAxisSpacing: 1.0,
                    ),
                    children: [
                     Column(
                        children: [
                  GestureDetector(
                  onTap: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(
                content: Text("1st Pic"),
                ));
                },
                         child: Image.network(
                            'https://upload.wikimedia.org/wikipedia/commons/4/41/Sunflower_from_Silesia2.jpg',
                            width: 120,
                          ),),

                          Text('Photo 0',style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text("2nd Pic"),
                              ));
                            },
                         child: Image.network(
                            'https://upload.wikimedia.org/wikipedia/commons/4/41/Sunflower_from_Silesia2.jpg',
                            width: 120,
                          )),
                          Text('Photo 1',style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text("3rd Pic"),
                              ));
                            },
                          child: Image.network(
                            'https://upload.wikimedia.org/wikipedia/commons/4/41/Sunflower_from_Silesia2.jpg',
                            width: 120
                          ),),
                          Text('Photo 2',style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text("4th Pic"),
                              ));
                            },
                          child: Image.network(
                            'https://upload.wikimedia.org/wikipedia/commons/4/41/Sunflower_from_Silesia2.jpg',
                            width: 120,
                          ),),
                          Text('Photo 3',style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text("5th Pic"),
                              ));
                            },
                          child: Image.network(
                            'https://upload.wikimedia.org/wikipedia/commons/4/41/Sunflower_from_Silesia2.jpg',
                            width: 120,
                          ),),
                          Text('Photo 4',style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text("5th Pic"),
                              ));
                            },
                          child: Image.network(
                            'https://upload.wikimedia.org/wikipedia/commons/4/41/Sunflower_from_Silesia2.jpg',
                            width: 120,
                          ),),
                          Text('Photo 5',style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                    ],
                  ),

                ),
              ),

            ),
            Column(
              children: [
                SizedBox(
                  height: 200,
                  width: 300,
                  child: ListView(
                    children: [
                  ListTile(
                      title: Text('Photo 1'),
                      subtitle: Text('Discription for Photo 1'),
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/4/41/Sunflower_from_Silesia2.jpg"),
                      )
                  ),
         ListTile(
        title: Text('Photo 1'),
        subtitle: Text('Discription for Photo 1'),
        leading: CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/4/41/Sunflower_from_Silesia2.jpg"),
        )
    ),
    ListTile(
        title: Text('Photo 1'),
        subtitle: Text('Discription for Photo 1'),
        leading: CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/4/41/Sunflower_from_Silesia2.jpg"),
        )
    )
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Center(
                  child:  ElevatedButton(onPressed: () {
                     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Photoes Uploaded Sucessfully!')));
                  },
                    child: Icon(Icons.upload, color: Colors.white,),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      backgroundColor: Colors.blue,
                    ),


                  ),
                )
              ],

            )


          ]),
        ),
      ),
    );
  }
}
