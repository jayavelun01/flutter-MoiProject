import 'package:flutter/material.dart';
import 'package:moi_appdesign/Widgets/add_notifications.dart';

class MoiNotifications extends StatelessWidget {
  final List<NotificationDetails> notifyData = [
    NotificationDetails(
      funcName: 'Marriage Function',
      name: 'K. Mani L. Vijay',
      date: 'July 18, 2023',
    ),
    NotificationDetails(
      funcName: 'Birthday Function',
      name: 'Y. Arun',
      date: 'July 18, 2023',
    ),
  ];

  MoiNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF9A2143),
      appBar: AppBar(
        backgroundColor: Color(0xFF9A2143),
        centerTitle: false,
        leadingWidth: 40,
        titleSpacing: 0,
        title: Text(
          'Notifications',
          style: TextStyle(
            fontFamily: 'DMSerifDisplay',
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset('assets/Back.png', height: 16),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: ListView.builder(
                  itemCount: notifyData.length,
                  itemBuilder: (context, index) {
                    final profile = notifyData[index];
                    return Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        height: 80,
                        width: 380,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 0.8,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    profile.funcName,
                                    style: TextStyle(
                                      fontFamily: 'DMSerifDisplay',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    profile.name,
                                    style: TextStyle(
                                      fontFamily: 'DMSerifDisplay',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 100),
                            Text(
                              profile.date,
                              style: TextStyle(
                                fontFamily: 'DMSerifDisplay',
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  // separatorBuilder: (context, index) => SizedBox(height: 5),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
