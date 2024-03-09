class Fatura {
  final String id;
  final String documentoId;
  final String documentoTipo;
  final String observacao;
  final int vencido;
  final String status;
  final String nossoNumero;
  final String valor;
  final String dataVencimento;
  final String referenciaMensalidade;
  final String? referencia;
  final String valorPago;
  final String cobrancaTipo;
  final String origem;
  final String dadosCobranca;
  final String situacao;
  final String valorAtualizado;

  Fatura({
    required this.id,
    required this.documentoId,
    required this.documentoTipo,
    required this.observacao,
    required this.vencido,
    required this.status,
    required this.nossoNumero,
    required this.valor,
    required this.dataVencimento,
    required this.referenciaMensalidade,
    this.referencia,
    required this.valorPago,
    required this.cobrancaTipo,
    required this.origem,
    required this.dadosCobranca,
    required this.situacao,
    required this.valorAtualizado,
  });

  factory Fatura.fromJson(Map<String, dynamic> json) {
    return Fatura(
      id: json['id'],
      documentoId: json['documento_id'],
      documentoTipo: json['documento_tipo'],
      observacao: json['observacao'],
      vencido: json['vencido'],
      status: json['status'],
      nossoNumero: json['nosso_numero'],
      valor: json['valor'],
      dataVencimento: json['data_vencimento'],
      referenciaMensalidade: json['referencia_mensalidade'],
      referencia: json['referencia'],
      valorPago: json['valor_pago'],
      cobrancaTipo: json['cobranca_tipo'],
      origem: json['origem'],
      dadosCobranca: json['dados_cobranca'],
      situacao: json['situacao'],
      valorAtualizado: json['valor_atualizado'],
    );
  }
}
