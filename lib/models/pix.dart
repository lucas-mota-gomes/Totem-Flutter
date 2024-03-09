class PixInfo {
  final String qrCodeBase64;
  final String inputValue;

  PixInfo({required this.qrCodeBase64, required this.inputValue});

  factory PixInfo.fromJson(Map<String, dynamic> json) {
    return PixInfo(
      qrCodeBase64: json['qrCodeBase64'] as String,
      inputValue: json['inputValue'] as String,
    );
  }
}
