import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:totem/models/faturas.dart';
import 'package:totem/models/pix.dart';

Future<List<Fatura>> fetchFaturas(String cpf) async {
  var url =
      'https://us-central1-chipnews.cloudfunctions.net/api/duobox/cobrancas/$cpf';
  const headers = {'Authorization': 'Basic dG90ZW06Tm4zeUVlUFJrNVBiOCZjQw=='};

  final response = await http.get(Uri.parse(url), headers: headers);

  if (response.statusCode == 200) {
    List<dynamic> faturasJson = jsonDecode(response.body);
    print(faturasJson);
    return faturasJson.map((json) => Fatura.fromJson(json)).toList();
  } else {
    // log erro
    print(response.statusCode);
    throw Exception('Falha ao carregar as faturas');
  }
}

Future<PixInfo> fetchPixInfo(String cpf, String documentoId) async {
  final response = await http.get(
    Uri.parse('https://us-central1-chipnews.cloudfunctions.net/api/duobox/pix?cpf=$cpf&id=$documentoId'),
    headers: {
      'Content-Type': 'application/json',
      'Authorization': 'Basic dG90ZW06Tm4zeUVlUFJrNVBiOCZjQw==', // Caso necessário
    },
  );

  if (response.statusCode == 200) {
    print(response.body);
    return PixInfo.fromJson(json.decode(response.body));
  } else {
    print('EROOOOOOOOOO');
    throw Exception('Failed to load Pix info');
  }
}