import 'package:flutter/material.dart';
import 'package:moi_appdesign/Widgets/app_member.dart';
import 'package:moi_appdesign/Widgets/app_textfield_normal.dart';

class MoiViewCollection extends StatelessWidget {
  final List<Member> profileItems = [
    Member(
      name: 'Ganesh',
      role: 'Shop Owner',
      location: 'Chennai',
      amount: '₹ 5000',
    ),
    Member(
      name: 'Aravind',
      role: 'Bussiness',
      location: 'Chennai',
      amount: '₹ 10000',
    ),
    Member(
      name: 'Ram',
      role: 'Shop Owner',
      location: 'Chennai',
      amount: '₹ 5000',
    ),
    Member(
      name: 'Ganesh',
      role: 'Shop Owner',
      location: 'Chennai',
      amount: '₹ 5000',
    ),
    Member(
      name: 'Aravind',
      role: 'Bussiness',
      location: 'Chennai',
      amount: '₹ 10000',
    ),
    Member(
      name: 'Ram',
      role: 'Shop Owner',
      location: 'Chennai',
      amount: '₹ 5000',
    ),
  ];

  MoiViewCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF9A2143),
      appBar: AppBar(
        centerTitle: false,
        leadingWidth: 35,
        titleSpacing: 0,
        title: Text(
          'View Collection details',
          style: TextStyle(
            fontFamily: 'DMSerifDisplay',
            fontSize: 14,
            color: Colors.white,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Image.asset('assets/Back.png'),
        ),
        backgroundColor: Color(0xFF9A2143),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),

        child: Column(
          children: [
            SizedBox(height: 10),
            Column(
              children: [
                AppTextfieldNormal(
                  hint: 'Search Name / Mobile Number',
                  prefix: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(Icons.search),
                  ),
                ),
              ],
            ),
            // SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Members 50',
                    style: TextStyle(
                      fontFamily: 'DMSerifDisplay',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Total Amount: 1,05,590',
                    style: TextStyle(
                      fontFamily: 'DMSerifDisplay',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: profileItems.length,
                padding: EdgeInsets.all(12),
                itemBuilder: (context, index) {
                  final profile = profileItems[index];

                  return Container(
                    margin: const EdgeInsets.only(bottom: 8),
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(14),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
