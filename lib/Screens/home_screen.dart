import 'package:flutter/material.dart';
import 'package:moi_appdesign/Widgets/app_listfunction.dart';

class MoiHomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> functionslist = [
    {
      'title': 'Wedding Function',
      'date': '09 July 2025',
      'venue': 'Chennai',
      'persons': 59,
      'total': '₹ 1,30,001',
    },
    {
      'title': 'Engagement Function',
      'date': '09 July 2025',
      'venue': 'Chennai',
      'persons': 59,
      'total': '₹ 1,30,001',
    },
  ];

  MoiHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF9A2143),
      appBar: AppBar(
        centerTitle: true,
        // toolbarHeight: 80,
        backgroundColor: const Color(0xFF9A2143),
        title: Image.asset('assets/Moi_logo.png', width: 150),
        leading: Image.asset('assets/Menu_rounded.png', width: 60),
        actions: [
          Icon(Icons.notifications_none, color: Colors.white),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Expanded(
            child: Container(
              width: double.infinity,
              // height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                // borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Container(
                    height: 180,
                    width: 370,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/Wedding_hanshake.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 120,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Color(0xFF9A2143),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Image.asset(
                                'assets/functional 1.png',
                                width: 60,
                                height: 60,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                // textAlign: TextAlign.center,
                                'CREATE A FUNCTION',
                                style: TextStyle(
                                  fontFamily: 'DMSerifDisplay',
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 120,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Color(0xFF9A2143),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Align(
                                child: Image.asset(
                                  'assets/View_function1.png',
                                  width: 50,
                                  height: 50,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 15),
                                child: Text(
                                  'VIEW FUNCTIONS',
                                  style: TextStyle(
                                    fontFamily: 'DMSerifDisplay',
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'Latest Function',
                          style: TextStyle(
                            fontFamily: 'DMSerifDisplay',
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'View All',
                          style: TextStyle(
                            fontFamily: 'DMSerifDisplay',
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: functionslist.length,
                      itemBuilder: (context, index) {
                        final item = functionslist[index];
                        return FunctionCard(
                          title: item['title'],
                          date: item['date'],
                          venue: item['venue'],
                          moipersons: item['persons'],
                          totalmoi: item['total'],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
