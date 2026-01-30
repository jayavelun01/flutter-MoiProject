import 'package:flutter/material.dart';
import 'package:moi_appdesign/Widgets/app_button.dart';
import 'package:moi_appdesign/Widgets/app_textfield_normal.dart';

class MoiCreateFunction extends StatelessWidget {
  const MoiCreateFunction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF9A2143),
      appBar: AppBar(
        leadingWidth: 45,
        titleSpacing: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset('assets/Back.png', height: 16),
        ),
        title: Text(
          'Create a Function',
          style: TextStyle(
            fontFamily: 'DMSerifDisplay',
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        centerTitle: false,
        backgroundColor: Color(0xFF9A2143),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Function Name',
                  style: TextStyle(fontFamily: 'DMSerifDisplay', fontSize: 14),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: AppTextfieldNormal(hint: 'Function Name'),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Date',
                  style: TextStyle(fontFamily: 'DMSerifDisplay', fontSize: 14),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: AppTextfieldNormal(
                  hint: 'Date',
                  suffix: Icon(Icons.date_range),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Venue',
                  style: TextStyle(fontFamily: 'DMSerifDisplay', fontSize: 14),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: AppTextfieldNormal(hint: 'Venue'),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'City / Village',
                  style: TextStyle(fontFamily: 'DMSerifDisplay', fontSize: 14),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: AppTextfieldNormal(
                  hint: 'City / Village',
                  suffix: Icon(Icons.arrow_drop_down),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: AppButton(text: 'SUBMIT', onTap: () {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
