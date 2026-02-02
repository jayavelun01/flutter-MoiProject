import 'package:flutter/material.dart';

class FunctionCard extends StatelessWidget {
  final String title;
  final String date;
  final String venue;
  final int moipersons;
  final String totalmoi;

  const FunctionCard({
    super.key,
    required this.title,
    required this.date,
    required this.venue,
    required this.moipersons,
    required this.totalmoi,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 1),
      padding: const EdgeInsets.all(14),

      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Title
          Text(
            title,
            style: TextStyle(
              fontFamily: 'DMSerifDisplay',
              fontSize: 16,
              color: Color(0xFF9A2143),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          _infoRow('Date', date),
          _infoRow('Venue', venue),
          _infoRow('Moi Persons', moipersons.toString()),
          _infoRow('Total Moi', totalmoi),
        ],
      ),
    );
  }

  Widget _infoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          SizedBox(
            width: 100,
            child: Text(
              label,
              style: TextStyle(fontFamily: 'DMSerifDisplay', fontSize: 14),
            ),
          ),
          const Text(' : '),
          Text(
            value,
            style: TextStyle(fontFamily: 'DMSerifDisplay', fontSize: 14),
          ),
        ],
      ),
    );
  }
}
