import 'package:flutter/material.dart';
import 'package:moi_appdesign/Widgets/app_button.dart';
import 'package:moi_appdesign/Widgets/app_textfield_normal.dart';

enum Options { Money, Things, Both }

class MoiAddCollections extends StatefulWidget {
  const MoiAddCollections({super.key});

  @override
  State<MoiAddCollections> createState() => _MoiAddCollectionsState();
}

class _MoiAddCollectionsState extends State<MoiAddCollections> {
  Options selectedValue = Options.Money;

  // final List<String> options = ['Money', 'Things', 'Both'];

  //Radio Button
  Widget _buildRadio(Options value, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Radio<Options>(
          value: value,
          groupValue: selectedValue,
          onChanged: (val) {
            setState(() => selectedValue = val!);
          },
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: VisualDensity(horizontal: -1, vertical: -1),
        ),
        Text(
          title,
          style: TextStyle(fontFamily: 'DMSerifDisplay', fontSize: 12),
        ),
        SizedBox(width: 15),
      ],
    );
  }

  //Conditional UI based on selection
  Widget _buildSelectedView() {
    switch (selectedValue) {
      case Options.Money:
        return _defaultColumn();
      case Options.Things:
        return _uploadImageColumn();
      case Options.Both:
        return _amountAndImageColumn();
    }
  }

  Widget _defaultColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Amount',
          style: TextStyle(fontFamily: 'DMSerifDisplay', fontSize: 10),
        ),
        SizedBox(height: 10),
        AppTextfieldNormal(hint: 'Amount'),
        SizedBox(height: 10),
      ],
    );
  }

  Widget _uploadImageColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Upload Image',
          style: TextStyle(fontFamily: 'DMSerifDisplay', fontSize: 10),
        ),
        SizedBox(height: 10),
        Image.asset('assets/upload.png', height: 50),
        SizedBox(height: 10),
      ],
    );
  }

  Widget _amountAndImageColumn() {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Amount',
              style: TextStyle(fontFamily: 'DMSerifDisplay', fontSize: 10),
            ),
            SizedBox(height: 5),
            AppTextfieldNormal(hint: 'Amount', width: 160, alignHintTop: true),
          ],
        ),
        SizedBox(width: 30),
        Column(
          children: [
            Text(
              'Upload Image',
              style: TextStyle(fontFamily: 'DMSerifDisplay', fontSize: 10),
            ),
            SizedBox(height: 10),
            Image.asset('assets/upload.png', height: 50),
            SizedBox(height: 10),
          ],
        ),
      ],
    );
  }

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
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset('assets/Back.png', height: 14, fit: BoxFit.contain),
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
          padding: const EdgeInsets.only(left: 10),
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 15),
                  Text(
                    'Name',
                    style: TextStyle(
                      fontFamily: 'DMSerifDisplay',
                      fontSize: 10,
                    ),
                  ),
                  SizedBox(height: 5),
                  AppTextfieldNormal(hint: 'Name'),
                  SizedBox(height: 10),
                  Text(
                    'Parent / Husband Name',
                    style: TextStyle(
                      fontFamily: 'DMSerifDisplay',
                      fontSize: 10,
                    ),
                  ),
                  SizedBox(height: 5),
                  AppTextfieldNormal(hint: 'Parent / Husband Name'),
                  SizedBox(height: 10),
                  Text(
                    'Alias / Pet Name',
                    style: TextStyle(
                      fontFamily: 'DMSerifDisplay',
                      fontSize: 10,
                    ),
                  ),
                  SizedBox(height: 5),
                  AppTextfieldNormal(hint: 'Alias / Pet Name'),
                  SizedBox(height: 10),
                  Text(
                    'City / Village',
                    style: TextStyle(
                      fontFamily: 'DMSerifDisplay',
                      fontSize: 10,
                    ),
                  ),
                  SizedBox(height: 5),
                  AppTextfieldNormal(hint: 'City / Village'),
                  SizedBox(height: 10),
                  Text(
                    'Mobile Number',
                    style: TextStyle(
                      fontFamily: 'DMSerifDisplay',
                      fontSize: 10,
                    ),
                  ),
                  SizedBox(height: 5),
                  AppTextfieldNormal(hint: 'Mobile Number'),
                  SizedBox(height: 10),
                  Text(
                    'Date',
                    style: TextStyle(
                      fontFamily: 'DMSerifDisplay',
                      fontSize: 10,
                    ),
                  ),
                  SizedBox(height: 5),
                  AppTextfieldNormal(hint: 'Date'),
                  SizedBox(height: 10),
                  Column(
                    children: [
                      Text(
                        'Moi Type',
                        style: TextStyle(
                          fontFamily: 'DMSerifDisplay',
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            _buildRadio(Options.Money, "Money"),
                            _buildRadio(Options.Things, "Things"),
                            _buildRadio(Options.Both, "Both"),
                          ],
                        ),
                      ),
                      _buildSelectedView(),
                    ],
                  ),
                  Text(
                    'Description',
                    style: TextStyle(
                      fontFamily: 'DMSerifDisplay',
                      fontSize: 10,
                    ),
                  ),
                  SizedBox(height: 5),
                  AppTextfieldNormal(
                    hint: 'Description',
                    height: 60,
                    alignHintTop: false,
                  ),
                  SizedBox(height: 15),
                  AppButton(
                    text: 'SUBMIT',
                    onTap: () {
                      Navigator.pushNamed(context, '/viewCollection');
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
