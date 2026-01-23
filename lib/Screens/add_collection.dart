import 'package:flutter/material.dart';
import 'package:moi_appdesign/Widgets/app_textfield_normal.dart';

class MoiAddCollections extends StatefulWidget {
  MoiAddCollections({super.key});

  @override
  State<MoiAddCollections> createState() => _MoiAddCollectionsState();
}

class _MoiAddCollectionsState extends State<MoiAddCollections> {
  String slectedValue = 'option1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF9A2143),
      appBar: AppBar(
        backgroundColor: Color(0xFF9A2143),
        centerTitle: false,
        leadingWidth: 45,
        titleSpacing: 0,
        title: Text(
          'Add Collection',
          style: TextStyle(
            fontFamily: 'DMSerifDisplay',
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(18),
          child: Image.asset(
            'assets/Back.png',
            height: 10,
            width: 10,
            fit: BoxFit.contain,
          ),
        ),
      ),
      body: Container(
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
          padding: const EdgeInsets.all(20.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Name',
                style: TextStyle(fontFamily: 'DMSerifDisplay', fontSize: 12),
              ),
              SizedBox(height: 5),
              AppTextfieldNormal(hint: 'Name'),
              SizedBox(height: 12),
              Text(
                'Parent / Husband Name',
                style: TextStyle(fontFamily: 'DMSerifDisplay', fontSize: 12),
              ),
              SizedBox(height: 5),
              AppTextfieldNormal(hint: 'Parent / Husband Name'),
              SizedBox(height: 12),
              Text(
                'Alias / Pet Name',
                style: TextStyle(fontFamily: 'DMSerifDisplay', fontSize: 12),
              ),
              SizedBox(height: 5),
              AppTextfieldNormal(hint: 'Alias / Pet Name'),
              SizedBox(height: 12),
              Text(
                'City / Village',
                style: TextStyle(fontFamily: 'DMSerifDisplay', fontSize: 12),
              ),
              SizedBox(height: 5),
              AppTextfieldNormal(hint: 'City / Village'),
              SizedBox(height: 12),
              Text(
                'Mobile Number',
                style: TextStyle(fontFamily: 'DMSerifDisplay', fontSize: 12),
              ),
              SizedBox(height: 5),
              AppTextfieldNormal(hint: 'Mobile Number'),
              SizedBox(height: 12),
              Text(
                'Date',
                style: TextStyle(fontFamily: 'DMSerifDisplay', fontSize: 12),
              ),
              SizedBox(height: 5),
              AppTextfieldNormal(hint: 'Date'),
              Column(
                children: [
                  RadioGroup(
                    groupValue: slectedValue,
                    onChanged: (value) {
                      setState(() {
                        slectedValue = value!;
                      });
                    },
                    child: Column(
                      children: [
                        // RadioListTile(value: value)
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 12),
              Text(
                'Amount',
                style: TextStyle(fontFamily: 'DMSerifDisplay', fontSize: 12),
              ),
              SizedBox(height: 5),
              AppTextfieldNormal(hint: 'Amount'),
              SizedBox(height: 12),
              Text(
                'Description',
                style: TextStyle(fontFamily: 'DMSerifDisplay', fontSize: 12),
              ),
              SizedBox(height: 5),
              AppTextfieldNormal(hint: 'Description'),
              SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}
