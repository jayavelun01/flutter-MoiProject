import 'package:flutter/material.dart';
import 'package:moi_appdesign/Widgets/app_member.dart';
import 'package:moi_appdesign/Widgets/app_textfield_normal.dart';

class MoiViewCollection extends StatelessWidget {
  final List<Member> profileItems = [
    Member(
      name: 'Ganesh',
      role: 'Shop Owner',
      location: 'Chennai',
      prodImage: 'assets/moi_bero.png',
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
      amount: '₹ 12000',
    ),
    Member(
      name: 'Ganesh',
      role: 'Shop Owner',
      location: 'Chennai',
      prodImage: 'assets/moi_bed.png',
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
      prodImage: 'assets/moi_jewels.png',
      amount: '',
    ),
    Member(
      name: 'Aravind',
      role: 'Bussiness',
      location: 'Chennai',
      amount: '₹ 10000',
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
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset('assets/Back.png', height: 14),
        ),
        backgroundColor: Color(0xFF9A2143),
      ),
      floatingActionButton: RawMaterialButton(
        onPressed: () {
          Navigator.pushNamed(context, '/addCollections');
        },
        shape: CircleBorder(),
        constraints: BoxConstraints(minWidth: 60, minHeight: 60),
        child: Icon(Icons.add_circle, size: 46, color: Color(0xFF9A2143)),
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
            AppTextfieldNormal(
              hint: 'Search Name / Mobile Number',
              prefix: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Icon(Icons.search),
              ),
            ),
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
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/collectionDetails');
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 8),
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: CircleAvatar(
                                  radius: 25, // diameter = 60
                                  backgroundImage: AssetImage(
                                    'assets/profile.png',
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    profile.name,
                                    style: TextStyle(
                                      fontFamily: 'DMSerifDisplay',
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Text(
                                    profile.role,
                                    style: TextStyle(
                                      fontFamily: 'DMSerifDisplay',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w100,
                                    ),
                                  ),
                                  Text(
                                    profile.location,
                                    style: TextStyle(
                                      fontFamily: 'DMSerifDisplay',
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              if (profile.prodImage != null)
                                GestureDetector(
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) => Dialog(
                                        backgroundColor: Colors.white,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            15,
                                          ),
                                          child: InteractiveViewer(
                                            // panEnabled: true,
                                            minScale: 1.0,
                                            maxScale: 4.0,
                                            child: Image.asset(
                                              profile.prodImage!,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      profile.prodImage!,
                                      height: 50,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  profile.amount,
                                  style: const TextStyle(
                                    fontFamily: 'DMSerifDisplay',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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
