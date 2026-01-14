import 'package:flutter/material.dart';
import 'package:moi_appdesign/Widgets/app_listfunction.dart';

class MoiViewFunctions extends StatelessWidget {
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

  MoiViewFunctions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF9A2143),
      appBar: AppBar(
        leadingWidth: 45,
        titleSpacing: 0,
        centerTitle: false,
        backgroundColor: Color(0xFF9A2143),
        title: Text(
          'View Functions',
          style: TextStyle(
            fontFamily: 'DMSerifDisplay',
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Image.asset('assets/Back.png'),
        ),
      ),
      body: Expanded(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Column(
            children: [
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
    );
  }
}
