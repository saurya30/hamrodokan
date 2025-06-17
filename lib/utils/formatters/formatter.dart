import 'package:intl/intl.dart';

class TFormatter{
  static String formatDate(DateTime? date){
    date ??=DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }
  
  static String formatCurrency(double amount){
    return NumberFormat.currency(locale: 'Npr', symbol: 'Rs').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
  phoneNumber = phoneNumber.replaceAll(RegExp(r'\D'), ''); // remove non-digit characters

  if (phoneNumber.length == 10 && (phoneNumber.startsWith('98') || phoneNumber.startsWith('97'))) {
  return '${phoneNumber.substring(0, 3)}-${phoneNumber.substring(3, 6)}-${phoneNumber.substring(6)}';
  }

  return phoneNumber; // return as-is if it doesn't match mobile pattern
  }



}
  
