class FunctionDetails {
  final String fname;
  final String date;
  final String? image;
  final String? amount;

  FunctionDetails({
    required this.fname,
    required this.date,
    this.image,
    this.amount,
  });
}
