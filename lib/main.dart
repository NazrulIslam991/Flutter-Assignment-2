import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Map<String, dynamic>> items = [
    {
      'image': 'bd_flag.png',
      'name': 'Bangladesh',
      'description': 'Rich culture, lush green landscapes.',
    },
    {
      'image': 'afg_flag.png',
      'name': 'Afghanistan',
      'description': 'Mountainous terrain, resilient people.',
    },
    {
      'image': 'aus_flag.png',
      'name': 'Australia',
      'description': 'Diverse wildlife, vast outback.',
    },
    {
      'image': 'braz_flag.png',
      'name': 'Brazil',
      'description': 'Vibrant festivals, Amazon rainforest.',
    },
    {
      'image': 'eng_flag.jpeg',
      'name': 'England',
      'description': 'Historic landmarks, royal heritage.',
    },
    {
      'image': 'jap_flag.png',
      'name': 'Japan',
      'description': 'Advanced technology, traditional customs.',
    },
    {
      'image': 'nz_flag.png',
      'name': 'New Zealand',
      'description': 'Stunning nature, Maori culture.',
    },
    {
      'image': 'sa_flag.png',
      'name': 'South Africa',
      'description': 'Cultural diversity, wildlife safaris.',
    },
    {
      'image': 'soudi_flag.png',
      'name': 'Saudi Arabia',
      'description': 'Desert landscapes, Islamic heritage.',
    },
    {
      'image': 'zim_flag.png',
      'name': 'Zimbabwe',
      'description': 'Victoria Falls, rich wildlife.',
    },
    {
      'image': 'bd_flag.png',
      'name': 'Bangladesh',
      'description': 'Rich culture, lush green landscapes.',
    },
    {
      'image': 'bd_flag.png',
      'name': 'Bangladesh',
      'description': 'Rich culture, lush green landscapes.',
    },
    {
      'image': 'bd_flag.png',
      'name': 'Bangladesh',
      'description': 'Rich culture, lush green landscapes.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    double _screenSize = MediaQuery.of(context).size.width;

    int crossAxisCount;
    double _childAspectRatio;

    if (_screenSize >= 1024) {
      crossAxisCount = 4;
      _childAspectRatio = 1.2;
    } else if (_screenSize >= 768 && _screenSize < 1024) {
      crossAxisCount = 3;
      _childAspectRatio = 1.0;
    } else {
      crossAxisCount = 2;
      _childAspectRatio = 0.8;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "World Explorer",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: _childAspectRatio,
          ),

          itemCount: items.length,

          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.grey[150],
              elevation: 8,
              shadowColor: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(10),
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        child: Image.asset(
                          'images/${items[index]['image']}',
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          items[index]['name'],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                          textAlign: TextAlign.start,
                        ),

                        SizedBox(height: 9),

                        Text(
                          items[index]['description'],
                          style: TextStyle(fontSize: 12),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),

                        TextButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "More Details",
                                style: TextStyle(fontSize: 14),
                              ),
                              Padding(padding: EdgeInsets.only(left: 5)),
                              Icon(Icons.arrow_forward_rounded),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
