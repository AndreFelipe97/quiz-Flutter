import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(DetranApp());

class DetranApp extends StatefulWidget {
  _DetranAppState createState() => _DetranAppState();
}

class _DetranAppState extends State<DetranApp> {
  var _questionSelected = 0;
  var _totalScore = 0;

  final List<Map<String, Object>> _questions = const [
    {
      'question':
          'Do condutor de veículo destinado à condução de escolares, exige-se:',
      'answers': [
        {
          'answer': 'Não ter cometido nenhuma infração de trânsito.',
          'score': 0
        },
        {'answer': 'Idade superior a 18 anos.', 'score': 0},
        {
          'answer':
              'Ter sido submetido a curso especializado de transporte escolar.',
          'score': 1
        },
        {
          'answer':
              'Apresentação do Registro Nacional de Transportadores Urbanos.',
          'score': 0
        },
      ]
    },
    {
      'question':
          'O artigo 61 do Código de Trânsito Brasileiro determina que, quando não houver sinalização, as velocidades máximas serão de:',
      'answers': [
        {
          'answer':
              'Nas Vias urbanas de Trânsito rápido é de 80km/h para todos os veículos',
          'score': 1
        },
        {
          'answer':
              'Nas Vias urbanas de Trânsito rápido é de 60km/h para todos os veículos',
          'score': 0
        },
        {
          'answer':
              'Nas Vias urbanas de Trânsito rápido é de 70km/h para todos os veículos',
          'score': 0
        },
        {
          'answer':
              'Nas Vias urbanas de Trânsito rápido é de 80km/h para carros e 70km/h para caminhões e ônibus',
          'score': 0
        },
        {
          'answer':
              'Nas Vias urbanas de Trânsito rápido é de 80km/h para carros e 60km/h para caminhões e ônibus',
          'score': 0
        },
      ]
    },
    {
      'question': 'Define-se ciclos como:',
      'answers': [
        {
          'answer': 'veículo de pelo menos duas rodas a propulsão elétrica.',
          'score': 0
        },
        {
          'answer':
              'veículo de pelo menos duas rodas a propulsão humana ou elétrica.',
          'score': 0
        },
        {
          'answer': 'veículo de pelo menos três rodas a propulsão humana.',
          'score': 0
        },
        {
          'answer': 'veículo de pelo menos duas rodas a propulsão humana.',
          'score': 1
        },
        {
          'answer': 'veículo de pelo menos uma roda a propulsão humana.',
          'score': 0
        },
      ]
    },
    {
      'question':
          'Neblina, chuva, vento forte e granizo são exemplos de condições adversas de:',
      'answers': [
        {'answer': 'Trânsito congestionado.', 'score': 0},
        {'answer': 'Tempo', 'score': 1},
        {'answer': 'Veículo', 'score': 0},
        {'answer': 'Luz', 'score': 0},
        {'answer': 'Motorista', 'score': 0},
      ]
    },
    {
      'question':
          'Em um acidente deve-se evitar atitude que possa colocar a vítima em perigo ocasionando maiores danos. Qual das atitudes está INCORRETA?',
      'answers': [
        {
          'answer':
              'Levar a vítima imediatamente para o hospital, não perder mais tempo',
          'score': 1
        },
        {
          'answer': 'Verificar sua respiração, pulsação e sangramento',
          'score': 0
        },
        {
          'answer':
              'Imobilizar a vítima caso seja necessário, evitando movimentá-la desnecessariamente',
          'score': 0
        },
        {
          'answer': 'Sinalizar o local para evitar outros acidentes',
          'score': 0
        },
        {'answer': 'Prestar auxílio e chamar o resgate', 'score': 0},
      ]
    },
    {
      'question':
          'O funcionamento de motor veicular em local fechado libera gases tóxicos, como:',
      'answers': [
        {'answer': 'Oxigênio e hidrogênio.', 'score': 0},
        {'answer': 'Gás carbônico e monóxido de carbono.', 'score': 1},
        {'answer': 'Oxigênio e gás carbônico.', 'score': 0},
        {'answer': 'Monóxido de carbono e oxigênio.', 'score': 0},
      ]
    },
    {
      'question':
          'A lâmpada de alerta do nível do fluido de freio do painel do veículo está acesa e, quando o freio de serviço é acionado, ocorre um ruido forte, tal como ferro roçando com ferro nas rodas dianteiras. Neste caso, o proprietário ou o condutor deve:',
      'answers': [
        {
          'answer':
              'Desligar os fios da bóia do reservatório do cilindro mestre',
          'score': 0
        },
        {
          'answer':
              'Levar o veículo a um posto autorizado para a verificação dos freios',
          'score': 1
        },
        {
          'answer':
              'Efetuar o rodízio das rodas, invertendo as da direita para a esquerda e vice-versa',
          'score': 0
        },
        {
          'answer':
              'Levar o veículo ao posto de serviços e lubrificar os discos de freio',
          'score': 0
        },
      ]
    },
    {
      'question': 'É direito do cidadão:',
      'answers': [
        {'answer': 'Repreender o idoso na sua travessia.', 'score': 0},
        {'answer': 'Bloquear o trânsito.', 'score': 0},
        {'answer': 'Conviver com o trânsito seguro.', 'score': 1},
        {'answer': 'Acelerar quando estiver com pressa.', 'score': 0},
      ]
    },
    {
      'question': 'A remoção do silenciador de um veículo',
      'answers': [
        {'answer': 'caracteriza uma infração grave.', 'score': 1},
        {'answer': 'caracteriza uma infração gravíssima.', 'score': 0},
        {'answer': 'caracteriza uma infração leve.', 'score': 0},
        {'answer': 'caracteriza uma infração moderada.', 'score': 0},
        {'answer': 'não é caracterizada como infração.', 'score': 0},
      ]
    },
    {
      'question':
          'A Carteira Nacional de Habilitação não será conferida ao condutor portador da Permissão para Dirigir ao término de um ano, se o mesmo tiver cometido:',
      'answers': [
        {'answer': 'Uma infração de natureza média e uma leve.', 'score': 0},
        {'answer': 'Uma infração de natureza grave ou gravíssima.', 'score': 1},
        {'answer': 'Ser reincidente na infração de natureza leve.', 'score': 0},
        {'answer': 'Uma infração de natureza leve.', 'score': 0},
      ]
    },
    {
      'question':
          'O condutor habilitado na categoria B que, posteriormente, habilitar-se na categoria A, receberá:',
      'answers': [
        {'answer': 'Dois registros no RENACH.', 'score': 0},
        {'answer': 'Um único registro no RENACOM. ', 'score': 0},
        {'answer': 'Um único registro no RENACH.', 'score': 1},
        {'answer': 'Dois registros no RENACOM.', 'score': 0},
      ]
    },
    {
      'question':
          'Quando o veículo sofrer uma pane e parar em meio ao fluxo de veículos na via, o condutor deverá:',
      'answers': [
        {
          'answer':
              'manter o veículo no próprio local onde parou e sinalizar com lanternas de posição e pisca-alerta',
          'score': 0
        },
        {
          'answer':
              'estacionar o veículo no próprio local da pane e sinalizar com a luz o freio e o triângulo de segurança',
          'score': 0
        },
        {
          'answer':
              'manter o veículo no próprio local onde parou e sinalizar com pisca-alerta e triângulo de seguraça',
          'score': 0
        },
        {
          'answer':
              'retirar o veículo do fluxo de trânsito e sinalizar com o pisca-alerta e o triângulo de segurança',
          'score': 1
        },
      ]
    },
    {
      'question':
          'Ao acionar o serviço de atendimento de emergência, o socorrista, não precisará passar as seguintes informações:',
      'answers': [
        {'answer': 'Gravidade aparente do acidente', 'score': 0},
        {'answer': 'Nome da rua ou rodovia e número próximo.', 'score': 0},
        {'answer': 'Endereço e número do telefone da vítima.', 'score': 1},
        {
          'answer':
              'Tipo de acidente, se envolve carro, motocicleta, colisão, atropelamento etc.',
          'score': 0
        },
      ]
    },
    {
      'question':
          'os centros urbanos são observadas maiores concentrações de poluentes do ar nos meses mais frios do ano. Este fato caracteriza-se',
      'answers': [
        {'answer': 'pelo excesso de veículos em circulação.', 'score': 0},
        {
          'answer':
              'pela dificuldade de dispersão dos poluentes nesta estação do ano.',
          'score': 1
        },
        {'answer': 'pela maior emissão de poluentes.', 'score': 0},
        {
          'answer': 'pela desregulagem dos motores causada pelo frio.',
          'score': 0
        },
        {'answer': 'pela maior atividade industrial.', 'score': 0},
      ]
    },
    {
      'question':
          'Os filtros de ar no sistema de alimentação, tem a função de retirar as impurezas do ar aspirado pelo motor, mas quando estiverem muito sujos podem causar:',
      'answers': [
        {'answer': 'Economia de combustível', 'score': 0},
        {'answer': 'Economia de lubrificantes', 'score': 0},
        {'answer': 'Aumento do consumo de combustível', 'score': 1},
        {'answer': 'Aumento da potência do motor', 'score': 0},
        {'answer': 'Trepidações no volante', 'score': 0},
      ]
    },
    {
      'question': 'Agir como um verdadeiro cidadão na direção do veículo é:',
      'answers': [
        {
          'answer':
              'Ter conhecimento e respeitar as leis, atuando como defensor do ambiente saudável;',
          'score': 0
        },
        {
          'answer':
              'Planejar as atividades diárias para circular, o mínimo possível, com o veículo;',
          'score': 0
        },
        {
          'answer':
              'Manter sacola plástica no interior do veículo para jogar o seu lixo e o dos passageiros;',
          'score': 0
        },
        {'answer': 'Todas as alternativas estão corretas.', 'score': 1},
      ]
    },
    {
      'question':
          'Assinale a alternativa que completa a questão: A categoria _____ habilita o condutor a dirigir veículo motorizado utilizado em transporte de carga, cujo peso bruto total exceda a 3.500 quilogramas.',
      'answers': [
        {'answer': 'D', 'score': 0},
        {'answer': 'E', 'score': 0},
        {'answer': 'C', 'score': 1},
        {'answer': 'B', 'score': 0},
      ]
    },
    {
      'question': 'Todo condutor deverá, antes de efetuar uma ultrapassagem:',
      'answers': [
        {'answer': 'Buzinar para o carro da frente', 'score': 0},
        {
          'answer':
              'Certificar-se de que o carro que o precede na mesma faixa de trânsito não haja indicado o propósito de ultrapassar um terceiro',
          'score': 1
        },
        {'answer': 'Sinalizar com luz alta', 'score': 0},
        {
          'answer':
              'Verificar apenas se o carro de trás não começou uma manobra e ultrapassagem',
          'score': 0
        },
        {'answer': 'Fazer sinal com a mão e sinal com o farol', 'score': 0},
      ]
    },
    {
      'question':
          'Para habilitar-se na categoria E, o condutor deverá possuir no mínimo:',
      'answers': [
        {
          'answer': '3 anos na categoria B, ou 2 anos na categoria C.',
          'score': 0
        },
        {
          'answer': '1 ano na categoria C, ou 1 ano na categoria D.',
          'score': 1
        },
        {'answer': '2 anos na categoria C.', 'score': 0},
        {'answer': '2 anos na categoria D.', 'score': 0},
      ]
    },
    {
      'question': 'As placas de advertência destinam-se a:',
      'answers': [
        {'answer': 'Identificar as vias.', 'score': 0},
        {
          'answer':
              'Advertir os usuários das obrigações ou restrições no uso das vias.',
          'score': 0
        },
        {
          'answer':
              'Alertar o usuário da existência e natureza de perigo na via.',
          'score': 1
        },
        {
          'answer':
              'Fornecer ao usuário informações úteis ao seu deslocamento.',
          'score': 0
        },
      ]
    },
    {
      'question':
          'O condutor, ao aproximar-se de uma lombada, deve reduzir a velocidade e ultrapassá-la:',
      'answers': [
        {
          'answer':
              'Virando a direção para a direita e depois para a esquerda.',
          'score': 0
        },
        {'answer': 'Virando a direção para a direita.', 'score': 0},
        {'answer': 'Virando a direção para a esquerda.', 'score': 0},
        {'answer': 'Alinhado em frente.', 'score': 1},
      ]
    },
    {
      'question':
          'Ao realizar uma avaliação primária numa vítima de acidente de trânsito, o PRIMEIRO item que deve ser avaliado é:',
      'answers': [
        {'answer': 'circulação e proteção da vítima', 'score': 0},
        {'answer': 'nível de consciência e respiração', 'score': 0},
        {'answer': 'fraturas e hemorragias', 'score': 0},
        {'answer': 'pressão arterial', 'score': 0},
        {'answer': 'vias aéreas e coluna cervical', 'score': 1},
      ]
    },
    {
      'question':
          'Nas grandes cidades, as principais fontes de poluição do ar são:',
      'answers': [
        {'answer': 'os incineradores.', 'score': 0},
        {'answer': 'as queimadas.', 'score': 0},
        {'answer': 'Ta queima de carvão.', 'score': 0},
        {'answer': 'os automóveis e as indústrias.', 'score': 1},
        {'answer': 'os fogões a gás.', 'score': 0},
      ]
    },
    {
      'question':
          'Para que ocorra a combustão interna em um motor são necessários os seguintes elementos:',
      'answers': [
        {'answer': 'Combustível e água.', 'score': 0},
        {'answer': 'Combustível e vapor de água.', 'score': 0},
        {'answer': 'Ar e combustível.', 'score': 1},
        {'answer': 'Água e Nitrogênio.', 'score': 0},
      ]
    },
    {
      'question':
          'Grande parte dos problemas de relacionamentos no trânsito ocorrem devido a alguns fatores:',
      'answers': [
        {
          'answer':
              'Falta de controle emocional do indivíduo, descaso a normas e regulamentos.',
          'score': 1
        },
        {
          'answer':
              'Falta de planejamento - horário - respeito aos direitos alheios.',
          'score': 0
        },
        {'answer': 'Valorização do homem.', 'score': 0},
        {'answer': 'Respeito dos direitos e deveres individuais.', 'score': 0},
      ]
    },
  ];

  void _answer(int score) {
    if (haveQuestionSelected) {
      setState(() {
        _questionSelected++;
        _totalScore += score;
      });
    }
  }

  void _resetForm() {
    setState(() {
      _questionSelected = 0;
      _totalScore = 0;
    });
  }

  bool get haveQuestionSelected {
    return _questionSelected < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff00853B),
          title: Text('Simulado Detran'),
        ),
        body: haveQuestionSelected
            ? Quiz(
                _questionSelected,
                _questions,
                _answer,
              )
            : Result(_totalScore, _resetForm),
      ),
    );
  }
}
