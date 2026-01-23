class Member {
  final String name;
  final String role;
  final String location;
  final String amount;
  final String? prodImage;

  Member({
    required this.name,
    required this.role,
    required this.location,
    required this.amount,
    this.prodImage,
  });
}
