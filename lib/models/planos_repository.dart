import 'planos.dart';

class PlanosRepository {
  static List<Plano> getPlans(String planType) {
    List<Plano> plans = [];

    if (planType == 'Combos') {
      plans = [
        Plano(
          title: 'COMBO I',
          description: 'R\$ 139,90',
          advantages: [
            '300 MEGA DOWNLOAD',
            '100 MEGA UPLOAD',
            'WI-FI PLUS 5 EM COMODATO',
            'INTERNET 12 GB NO MÓVEL',
            'LIGAÇÕES ILIMITADAS NO MÓVEL',
            'ACUMULO DO MÊS ANTERIOR',
            'PORTABILIDADE GRATUITA',
            'FIBRA STREAMING + TV',
            'TELEMEDICINA SULAMERICA',
            'FIDELIDADE DE 12 MESES',
            'SEM SURPRESA NA CONTA',
            'SEM CONSUMO DE DADOS',
            '(*PAGAMENTO VIA PIX ATÉ O VENCIMENTO)',
          ],
        ),
        Plano(
          title: 'COMBO II',
          description: 'R\$ 169,90',
          advantages: [
            '400 MEGA DOWNLOAD',
            '150 MEGA UPLOAD',
            'WI-FI PLUS 5 EM COMODATO',
            'INTERNET 17 GB NO MÓVEL',
            'LIGAÇÕES ILIMITADAS NO MÓVEL',
            'ACUMULO DO MÊS ANTERIOR',
            'PORTABILIDADE GRATUITA',
            'FIBRA STREAMING + TV',
            'TELEMEDICINA SULAMERICA',
            'FIDELIDADE DE 12 MESES',
            'SEM SURPRESA NA CONTA',
            'SEM CONSUMO DE DADOS',
            '(*PAGAMENTO VIA PIX ATÉ O VENCIMENTO)',
          ],
        ),
        Plano(
          title: 'COMBO III',
          description: 'R\$ 199,90',
          advantages: [
            '600 MEGA DOWNLOAD',
            '200 MEGA UPLOAD',
            'WI-FI PLUS 5 EM COMODATO',
            'INTERNET 25 GB NO MÓVEL',
            'LIGAÇÕES ILIMITADAS NO MÓVEL',
            'ACUMULO DO MÊS ANTERIOR',
            'PORTABILIDADE GRATUITA',
            'FIBRA STREAMING + TV',
            'TELEFONIA FIXA ILIMITADA',
            'TELEMEDICINA SULAMERICA',
            'FIDELIDADE DE 12 MESES',
            'SEM CONSUMO DE DADOS',
            '(*PAGAMENTO VIA PIX ATÉ O VENCIMENTO)',
          ],
        ),
      ];
    } else if (planType == 'Internet') {
      plans = [
        Plano(
          title: 'PLANO 200 MEGA',
          description: 'R\$ 69,90',
          advantages: [
            '200 MEGA DOWNLOAD',
            '70 MEGA UPLOAD',
            'PLANO START',
            '100% FIBRA ÓPTICA',
            'OPTICAL NETWORK UNIT',
            'IPV4 E IPV6',
            'FIBRA STREAMING ON DEMAND',
          ],
        ),
        Plano(
          title: 'PLANO 300 MEGA',
          description: 'R\$ 89,90',
          advantages: [
            '300 MEGA DOWNLOAD',
            '100 MEGA UPLOAD',
            'PLANO FLASH',
            '100% FIBRA ÓPTICA',
            'WI-FI 5 PLUS ONT',
            'IPV4 E IPV6',
            'FIBRA STREAMING',
            'FIBRA TV 63 CANAIS HD',
          ],
        ),
        Plano(
          title: 'PLANO 400 MEGA',
          description: 'R\$ 99,90',
          advantages: [
            '400 MEGA DOWNLOAD',
            '150 MEGA UPLOAD',
            'PLANO ULTRA',
            '100% FIBRA ÓPTICA',
            'WI-FI 5 PLUS ONT',
            'IPV4 E IPV6',
            'FIBRA STREAMING',
            'FIBRA TV 97 CANAIS HD',
          ],
        ),
        Plano(
          title: 'PLANO 500 MEGA',
          description: 'R\$ 119,90',
          advantages: [
            '500 MEGA DOWNLOAD',
            '200 MEGA UPLOAD',
            'PLANO POWER',
            '100% FIBRA ÓPTICA',
            'WI-FI 5 PLUS ONT',
            'IPV4 E IPV6',
            'FIBRA STREAMING',
            'FIBRA TV 134 CANAIS HD',
          ],
        ),
        Plano(
          title: 'PLANO 700 MEGA',
          description: 'R\$ 139,90',
          advantages: [
            '700 MEGA DOWNLOAD',
            '300 MEGA UPLOAD',
            'PLANO FAST',
            '100% FIBRA ÓPTICA',
            'WI-FI 5 PLUS ONT',
            'IPV4 E IPV6',
            'FIBRA STREAMING',
            'FIBRA TV 153 CANAIS FHD',
          ],
        ),
        Plano(
          title: 'PLANO GAMER 1 GIGA',
          description: 'R\$ 199,90',
          advantages: [
            '1 GIGA DOWNLOAD',
            '500 MEGA UPLOAD',
            'IP PUBLICO',
            'PING MAIS BAIXO',
            'UPLOAD = DOWNLOAD',
            'WI-FI 6 PLUS ONT',
            'MELHORES ROTAS',
            'NAT-1',
          ],
        ),
      ];
    } else if (planType == 'Avançado') {
      plans = [
        Plano(
          title: 'SMART - 17 GB',
          description: 'R\$ 54,90',
          advantages: [
            '12 GB + 5 GB Portabilidade*',
            'Acumulo do mês anterior',
            'Ligação Ilimitada',
            'Portabilidade Gratuita',
            'Sem Consulta SPC/SERASA',
            'Sem Surpresa na Conta',
            'Sem Consumo de Dados',
            '(*PAGAMENTO ANTES DO VENCIMENTO)',
          ],
        ),
        Plano(
          title: 'STREAMING - 25 GB',
          description: 'R\$ 64,90',
          advantages: [
            '20 GB + 5 GB Portabilidade*',
            'Acumulo do mês anterior',
            'Ligação Ilimitada',
            'Portabilidade Gratuita',
            'Sem Consulta SPC/SERASA',
            'Sem Surpresa na Conta',
            'Sem Consumo de Dados',
            '(*PAGAMENTO ANTES DO VENCIMENTO)',
          ],
        ),
        Plano(
          title: 'WORK - 47 GB',
          description: 'R\$ 84,90',
          advantages: [
            '42 GB + 5 GB Portabilidade*',
            'Acumulo do mês anterior',
            'Ligação Ilimitada',
            'Portabilidade Gratuita',
            'Sem Consulta SPC/SERASA',
            'Sem Surpresa na Conta',
            'Sem Consumo de Dados',
            '(*PAGAMENTO ANTES DO VENCIMENTO)',
          ],
        ),
        Plano(
          title: 'BASIC - 9 GB',
          description: 'R\$ 39,90',
          advantages: [
            '4 GB + 5 GB Portabilidade*',
            'Acumulo do mês anterior',
            'Ligação Ilimitada',
            'Portabilidade Gratuita',
            'Sem Consulta SPC/SERASA',
            'Sem Surpresa na Conta',
            'Sem Consumo de Dados',
            '(*PAGAMENTO ANTES DO VENCIMENTO)',
          ],
        ),
        Plano(
          title: 'TALK - 12 GB',
          description: 'R\$ 44,90',
          advantages: [
            '7 GB + 5 GB Portabilidade*',
            'Acumulo do mês anterior',
            'Ligação Ilimitada',
            'Portabilidade Gratuita',
            'Sem Consulta SPC/SERASA',
            'Sem Surpresa na Conta',
            'Sem Consumo de Dados',
            '(*PAGAMENTO ANTES DO VENCIMENTO)',
          ],
        ),
      ];
    } else if (planType == 'Movel') {
      plans = [
        Plano(
          title: 'BASIC',
          description: 'R\$ 29,90',
          advantages: [
            '3 GB DE INTERNET',
            'LIGAÇÕES ILIMITADAS',
            'SMS ILIMITADOS',
            'ACÚMULO DE DADOS NÃO UTILIZADOS',
          ],
        ),
        Plano(
          title: 'INTERMEDIÁRIO',
          description: 'R\$ 49,90',
          advantages: [
            '10 GB DE INTERNET',
            'LIGAÇÕES ILIMITADAS',
            'SMS ILIMITADOS',
            'ACÚMULO DE DADOS NÃO UTILIZADOS',
          ],
        ),
        Plano(
          title: 'AVANÇADO',
          description: 'R\$ 69,90',
          advantages: [
            '20 GB DE INTERNET',
            'LIGAÇÕES ILIMITADAS',
            'SMS ILIMITADOS',
            'ACÚMULO DE DADOS NÃO UTILIZADOS',
          ],
        ),
        Plano(
          title: 'PREMIUM',
          description: 'R\$ 99,90',
          advantages: [
            '30 GB DE INTERNET',
            'LIGAÇÕES ILIMITADAS',
            'SMS ILIMITADOS',
            'ACÚMULO DE DADOS NÃO UTILIZADOS',
          ],
        ),
        Plano(
          title: 'ULTRA',
          description: 'R\$ 129,90',
          advantages: [
            '50 GB DE INTERNET',
            'LIGAÇÕES ILIMITADAS',
            'SMS ILIMITADOS',
            'ACÚMULO DE DADOS NÃO UTILIZADOS',
          ],
        ),
      ];
    } else if (planType == 'TV') {
      plans = [
        Plano(
          title: 'TV STAND',
          description: 'R\$ 49,90',
          advantages: [
            '37 CANAIS',
            '26 CANAIS EM HD',
            'VIA APP',
            '1 TELA DISPONÍVEL',
            'MELHOR QUALIDADE DE SINAL',
            'SEM CONSULTA SPC/SERASA',
            'SEM SURPRESA NA CONTA',
            '(*PAGAMENTO VIA PIX ATÉ O VENCIMENTO)',
          ],
        ),
        Plano(
          title: 'TV TOTAL',
          description: 'R\$ 69,90',
          advantages: [
            '80 CANAIS',
            '54 CANAIS EM HD',
            'VIA APP',
            '1 TELA DISPONÍVEL',
            'MELHOR QUALIDADE DE SINAL',
            'SEM CONSULTA SPC/SERASA',
            'SEM SURPRESA NA CONTA',
            '(*PAGAMENTO VIA PIX ATÉ O VENCIMENTO)',
          ],
        ),
        Plano(
          title: 'TV PRIME',
          description: 'R\$ 89,90',
          advantages: [
            '90 CANAIS',
            '63 CANAIS EM HD',
            'VIA APP',
            '1 TELA DISPONÍVEL',
            'MELHOR QUALIDADE DE SINAL',
            'SEM CONSULTA SPC/SERASA',
            'SEM SURPRESA NA CONTA',
            '(*PAGAMENTO VIA PIX ATÉ O VENCIMENTO)',
          ],
        ),
      ];
    } else if (planType == 'TelefoniaFixa') {
      plans = [
        Plano(
          title: 'RESIDENCIAL',
          description: 'R\$ 19,90',
          advantages: [
            'VOICE DIRECT FIXO',
            'FALE ILIMITADO NACIONAL',
            'TECNOLOGIA 100% FIBRA',
            'PORTABILIDADE GRATUITA',
            'SEM CONSULTA SPC/SERASA',
            'SEM FIDELIDADE',
          ],
        ),
        Plano(
          title: 'EMPRESARIAL',
          description: 'R\$ 39,90',
          advantages: [
            'VOICE DIRECT FIXO',
            'FALE ILIMITADO NACIONAL',
            'TECNOLOGIA 100% FIBRA',
            'PORTABILIDADE GRATUITA',
            '2 RAMAIS',
            'SEM CONSULTA SPC/SERASA',
            'SEM FIDELIDADE',
          ],
        ),
        Plano(
          title: 'SOLUÇÃO PREDIAL',
          description: 'CONSULTE',
          advantages: [
            'PORTARIA REMOTA',
            'INTERFONE COM SIGA-ME',
            'SISTEMA TV CANAIS ABERTOS',
            'SISTEMA CFTV',
            'ADEQUAÇÃO PREDIAL TELECOM',
            'TODOS OS SERVIÇOS EM UMA FIBRA',
            'CONTROLE DE ACESSO POR TAG VEICULAR',
          ],
        ),
      ];
    }

    plans.sort((a, b) => _getPrice(a.description).compareTo(_getPrice(b.description)));

    return plans;
  }

  static double _getPrice(String description) {
    final priceRegExp = RegExp(r'R\$ (\d+,\d+)');
    final match = priceRegExp.firstMatch(description);
    if (match != null) {
      final priceString = match.group(1)!.replaceAll(',', '.');
      return double.tryParse(priceString) ?? 0;
    }
    return double.maxFinite; // Para casos onde o preço é "CONSULTE" ou similar
  }
}