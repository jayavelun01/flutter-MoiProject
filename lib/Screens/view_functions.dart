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
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset('assets/Back.png', height: 14),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: ListView.builder(
          itemCount: functionslist.length,
          itemBuilder: (context, index) {
            final item = functionslist[index];
            return InkWell(
              onTap: index == 0
                  ? () {
                      Navigator.pushNamed(context, '/viewCollection');
                    }
                  : null,
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: FunctionCard(
                  title: item['title'],
                  date: item['date'],
                  venue: item['venue'],
                  moipersons: item['persons'],
                  totalmoi: item['total'],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
