import 'package:http/http.dart' as http;
class RemoteService {
  Future<String> updateData(String selectedCurrency) async {
    final response = await http.get(Uri.parse("https://rest.coinapi.io/v1/exchangerate/BTC/$selectedCurrency?apikey=15C1B136-D83D-4F2D-966B-F6D673F78383"));
    return response.body;
   /* if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to load album');
    }*/
  }
}