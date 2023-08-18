import 'dart:convert';

import 'package:http/http.dart' as http;

class ViaCep {
  Future<Map<dynamic, dynamic>> retornarCep(String cep) async {
    var uri = Uri.parse('https://viacep.com.br/ws/$cep/json/');
    var retorno = await http.get(uri);
    var decodedResponde = jsonDecode(utf8.decode(retorno.bodyBytes)) as Map;
    print(decodedResponde);
    return decodedResponde;
  }
}
