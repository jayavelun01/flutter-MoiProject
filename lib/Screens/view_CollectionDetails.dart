import 'package:flutter/material.dart';
import 'package:moi_appdesign/Widgets/add_function.dart';

class MoiCollectionDetails extends StatelessWidget {
  final List<FunctionDetails> funcData = [
    FunctionDetails(
      fname: 'Marriage Function',
      date: 'July 18, 2023',
      amount: '₹ 5000',
    ),
    FunctionDetails(
      fname: 'Marriage Function',
      date: 'July 18, 2023',
      amount: '₹ 5000',
    ),
    FunctionDetails(
      fname: 'Marriage Function',
      date: 'July 18, 2023',
      image: 'assets/moi_bed.png',
      amount: '',
    ),
    FunctionDetails(
      fname: 'Marriage Function',
      date: 'July 18, 2023',
      amount: '₹ 5000',
    ),
    FunctionDetails(
      fname: 'Marriage Function',
      date: 'July 18, 2023',
      amount: '₹ 5000',
    ),
    FunctionDetails(
      fname: 'Marriage Function',
      date: 'July 18, 2023',
      image: 'assets/moi_jewels.png',
      amount: '₹ 5000',
    ),
    FunctionDetails(
      fname: 'Marriage Function',
      date: 'July 18, 2023',
      amount: '₹ 5000',
    ),
  ];
  MoiCollectionDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF9A2149),
      appBar: AppBar(
        leadingWidth: 40,
        titleSpacing: 0,
        centerTitle: false,
        title: Text(
          'View Details',
          style: TextStyle(
            fontFamily: 'DMSerifDisplay',
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Image.asset('assets/Back.png'),
        ),
        backgroundColor: Color(0xFF9A2149),
      ),
      floatingActionButton: RawMaterialButton(
        onPressed: () {},
        shape: CircleBorder(),
        constraints: BoxConstraints(minWidth: 60, minHeight: 60),
        child: Icon(Icons.add_circle, size: 46, color: Color(0xFF9A2143)),
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/profile.png'),
                ),
                SizedBox(height: 5),
                Text(
                  'Ganesh',
                  style: TextStyle(
                    fontFamily: 'DMSerifDisplay',
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Anna Nagar, Chennai',
                  style: TextStyle(
                    fontFamily: 'DMSerifDisplay',
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '+91 99303 40403',
                  style: TextStyle(
                    fontFamily: 'DMSerifDisplay',
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Expanded(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListView.builder(
                  itemCount: funcData.length,
                  itemBuilder: (context, index) {
                    final profile = funcData[index];
                    return Row(
                      mainAxisAlignment: index.isEven
                          ? MainAxisAlignment.start
                          : MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 8),
                          height: 70,
                          width: 260,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      profile.fname,
                                      style: TextStyle(
                                        fontFamily: 'DMSerifDisplay',
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    Text(
                                      profile.date,
                                      style: TextStyle(
                                        fontFamily: 'DMSerifDisplay',
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              if (profile.image != null)
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    profile.image!,
                                    height: 40,
                                    width: 40,
                                  ),
                                ),
                              if (profile.amount != null)
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    profile.amount!,
                                    style: TextStyle(
                                      fontFamily: 'DMSerifDisplay',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                      color: index.isEven
                                          ? Colors.green
                                          : Color(0xFF9A2143),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
