import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/services.dart';
const List<String> list1 = <String>['Método de Pagamento','Pix ', 'Boleto'];
const List<String> list2 = <String>['Método de Transferência','TED', 'Pix'];
const List<String> list3 = <String>['Moeda','Dólar', 'Euro', 'Libras'];
const List<String> list4 = <String>['Parcelas','6x','8x', '10x', '12x', '24x'];
const List<String> list5 = <String>['Cartão Principal','Cartão V1', 'Cartão V2'];
const List<String> list6 = <String>['Tipo de Seguro','Residência','Veículo', 'Viagem'];
const List<String> list7 = <String>['Ação','Depositar','Resgatar'];
const Map<String, IconData> iconsMap = {
  'attach_money': Icons.attach_money,
  'bar_chart_sharp': Icons.bar_chart_sharp,
  'savings': Icons.savings,
  'pix': Icons.pix,
  'card':Icons.payment,
  'euro':Icons.euro,
  'pounds': Icons.currency_pound,
  'bitcoin': Icons.currency_bitcoin,
  'divide': Icons.account_balance_wallet,
  'expire': Icons.access_time,
  'limit': Icons.vertical_align_top,
  'title': Icons.person,
  'number': Icons.numbers,
  'credit': Icons.credit_card
};
const String clientName = 'Rick';
double countAmount = 1364.27;
double savingsAmount = 10208.35;
double dollarAmount = 30.00;
double dollarCurrency = 5.22;
double poundsAmount = 15.00;
double poundsCurrency = 6.44;
double euroAmount = 22.00;
double euroCurrency = 5.51;
double monthlyStonks = 8.27;
double borrowingLimits = 32000.00;
double valueCard = 1378.25;
String valueDropDownSelected = '';

TextEditingController savingsController = TextEditingController();
TextEditingController transferController = TextEditingController();
TextEditingController codeTransferController = TextEditingController();
TextEditingController codePaymentController = TextEditingController();
TextEditingController rechargeController = TextEditingController();
TextEditingController cellphoneController = TextEditingController();
TextEditingController exchangeController = TextEditingController();
TextEditingController borrowingController = TextEditingController();


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OxeBanking',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),

      home: const InitialScreen()
    );

  }
}

class InitialScreen extends StatelessWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(100, 150, 237, 255),
      appBar: AppBar(toolbarHeight: 200, leading: Container(),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('images/cancer.png', fit: BoxFit.cover, width:240),
            const Text('OxeBanking', style: TextStyle(fontSize: 100)),
          ],
        ),

        backgroundColor: const Color.fromARGB(255, 1, 89, 100),),
      body: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        height:200,

        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width:300,
            child: TextFormField(
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]+[.]{0,1}[0-9]*')),
                ],
              decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: '000.000.000-00',
              labelText: 'CPF',
              border: OutlineInputBorder())

            ),
      ),
          const SizedBox(
            width:300,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
              icon: Icon(Icons.password),
              border: OutlineInputBorder(),
              labelText: 'Senha'
              ),
        )
      ),
          SizedBox(
            width:300,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 1, 89, 100),
                ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()),
              );},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text('Login', style: TextStyle(fontSize: 16),)
                ],
              )
            )
          ),
          SizedBox(
              width:300,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 1, 89, 100),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInPage()),
                    );},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text('Não possuo cadastro', style: TextStyle(fontSize: 16),)
                    ],
                  )
              )
          ),
  Container() ], ) ,
  ),
  ],
  );
    }
}

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(100, 150, 237, 255),
      appBar: AppBar(toolbarHeight: 200, leading: Container(),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('images/cancer.png', fit: BoxFit.cover, width:240),
            const Text('OxeBanking', style: TextStyle(fontSize: 100)),
          ],
        ),

        backgroundColor: const Color.fromARGB(255, 1, 89, 100),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height:200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width:300,
                  child: TextFormField(
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]+[.]{0,1}[0-9]*')),
                      ],
                      decoration: const InputDecoration(
                          icon: Icon(Icons.person),
                          hintText: '000.000.000-00',
                          labelText: 'CPF',
                          border: OutlineInputBorder())

                  ),
                ),
                const SizedBox(
                    width:300,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          icon: Icon(Icons.password),
                          border: OutlineInputBorder(),
                          labelText: 'Escolha uma senha'
                      ),
                    )
                ),
                const SizedBox(
                    width:300,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          icon: Icon(Icons.password),
                          border: OutlineInputBorder(),
                          labelText: 'Confirme sua senha'
                      ),
                    )
                ),
                SizedBox(
                    width:300,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 1, 89, 100),
                        ),
                        onPressed: (){
                          Navigator.pop(context);
                          },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text('Cadastrar', style: TextStyle(fontSize: 16),)
                          ],
                        )
                    )
                ),
                Container() ], ) ,
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 100, leading: Container(),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('images/cancer.png', fit: BoxFit.cover, width:150),
            const Text('OxeBanking', style: TextStyle(fontSize: 80)),
          ],
        ),

        backgroundColor: const Color.fromARGB(255, 1, 89, 100),),
      body: Column(
        children: [
          _Menu((section) {
            _pageController.animateToPage(section,
                duration: const Duration(milliseconds: 500),
                curve: Curves.ease);
          }),
          Expanded(
            child: PageView(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              pageSnapping: false,
              children: const [
                _Section(color: Color.fromARGB(255, 0, 143, 160), index: 0),
                _Section(color: Color.fromARGB(255, 0, 143, 160), index: 1),
                _Section(color: Color.fromARGB(255, 0, 143, 160), index: 2),
                _Section(color: Color.fromARGB(255, 0, 143, 160), index: 3),
                _Section(color: Color.fromARGB(255, 0, 143, 160), index: 4),
                _Section(color: Color.fromARGB(255, 0, 143, 160), index: 5),
                _Section(color: Color.fromARGB(255, 0, 143, 160), index: 6),
                _Section(color: Color.fromARGB(255, 0, 143, 160), index: 7),
                _Section(color: Color.fromARGB(255, 0, 143, 160), index: 8),
                _Section(color: Color.fromARGB(255, 0, 143, 160), index: 9),
                _Section(color: Color.fromARGB(255, 0, 143, 160), index: 10),
              ],
            ),
          )
        ],
      ),
    );
  }
}

typedef SectionCallBack = void Function(int);

class _Menu extends StatelessWidget {
  final SectionCallBack sectionClick;

  const _Menu(this.sectionClick);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(

            onPressed: () {
              sectionClick(0);
            },
            child: const Text('Conta ', style: TextStyle(fontSize: 20, color:Color.fromARGB(255, 1, 89, 100)),),
          ),
          TextButton(
            onPressed: () {
              sectionClick(1);
            },
            child: const Text('Pagamentos ', style: TextStyle(fontSize: 20, color:Color.fromARGB(255, 1, 89, 100))),
          ),
          TextButton(
            onPressed: () {
              sectionClick(2);
            },
            child: const Text('Transferências ', style: TextStyle(fontSize: 20, color:Color.fromARGB(255, 1, 89, 100))),
          ),
          TextButton(
            onPressed: () {
              sectionClick(3);
            },
            child: const Text('Extratos ', style: TextStyle(fontSize: 20, color:Color.fromARGB(255, 1, 89, 100))),
          ),
          TextButton(
            onPressed: () {
              sectionClick(4);
            },
            child: const Text('Poupança ', style: TextStyle(fontSize: 20, color:Color.fromARGB(255, 1, 89, 100))),
          ),
          TextButton(
            onPressed: () {
              sectionClick(5);
            },
            child: const Text('Cartões ', style: TextStyle(fontSize: 20, color:Color.fromARGB(255, 1, 89, 100))),
          ),
          TextButton(
            onPressed: () {
              sectionClick(6);
            },
            child: const Text('Empréstimos ', style: TextStyle(fontSize: 20, color:Color.fromARGB(255, 1, 89, 100))),
          ),
          TextButton(
            onPressed: () {
              sectionClick(7);
            },
            child: const Text('Recarga ', style: TextStyle(fontSize: 20, color:Color.fromARGB(255, 1, 89, 100))),
          ),
          TextButton(
            onPressed: () {
              sectionClick(8);
            },
            child: const Text('Câmbio ', style: TextStyle(fontSize: 20, color:Color.fromARGB(255, 1, 89, 100))),
          ),
          TextButton(
            onPressed: () {
              sectionClick(9);
            },
            child: const Text('Investimentos ', style: TextStyle(fontSize: 20, color:Color.fromARGB(255, 1, 89, 100))),
          ),
          TextButton(
            onPressed: () {
              sectionClick(10);
            },
            child: const Text('Seguro ', style: TextStyle(fontSize: 20, color:Color.fromARGB(255, 1, 89, 100))),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Sair ', style: TextStyle(fontSize: 20, color:Color.fromARGB(255, 1, 89, 100))),
          ),
        ],
      ),
    );
  }
}

class _Section extends StatelessWidget {
  final Color color;
  final int index;
  const _Section({required this.color, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          color: color,
          height: 1000,
      ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color:Colors.white,
            ),
            width: 900,
            child: LayoutSection(index)

          ),
        )]
    );
  }
}

class LayoutSection extends StatelessWidget {
  final int index;
  const LayoutSection(this.index,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(index==0) {
      return Account(countAmount, savingsAmount, monthlyStonks, clientName);
    }
    else if(index==1) {
      return Payment(countAmount);
    }
    else if(index==2) {
      return Transfer(countAmount);
    }
    else if(index==3) {
      return const Extracts();
    }
    else if (index==4){
      return Savings(countAmount, savingsAmount, monthlyStonks);
    }
    else if (index==5){
      return const CreditCards();
    }
    else if (index==6){
      return const Borrowing();
    }
    else if (index==7){
      return Recharging(countAmount);
    }
    else if (index==8){
      return const Exchanging();
    }

    else if (index==9){
      return const Invest();
    }
    else{
      return const PolicyAssurance();
    }
  }
}

class Account extends StatefulWidget {
  final double amount;
  final double savings;
  final double profit;
  final String name;
  const Account(this.amount,this.savings, this.profit,this.name, {Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: SingleChildScrollView(
        child: SizedBox(
          height: 700,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              H1('Bem vindo de volta, ${widget.name}!', 70),
              MainDisplay(widget.amount, 'Saldo disponível'),
              SmallCard('R\$ ${widget.savings}', 'savings', 'Dinheiro guardado', 1),
              SmallCard('R\$ ${widget.profit}', 'bar_chart_sharp', 'Rendimento mensal', 1),


            ],
          ),
        ),
      ),
    );
  }
}

class Payment extends StatefulWidget {
  final double amount;
  const Payment(this.amount, {Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: SingleChildScrollView(
        child: SizedBox(
          height: 700,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const H1('Pagamentos', 100),
              SmallCard('R\$ ${countAmount}', 'attach_money', 'Saldo da conta', 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Selecione o pagamento que deseja fazer:', style: TextStyle(
                      color: Color.fromARGB(255, 2, 53, 53), fontSize: 20
                  ),),
                  DropdownButtonExample(list1),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width:300,
                    height: 50,
                    child: TextFormField(

                        controller: codePaymentController,
                        decoration: const InputDecoration(
                            icon: Icon(Icons.qr_code),
                            hintText: 'Código pix/boleto',
                            labelText: 'Código do pagamento',
                            border: OutlineInputBorder())

                    ),
                  ),
                  SizedBox(
                      width:300,
                      height:50,
                      child: ElevatedButton(
                          onPressed: (){setState((){
                            if(codePaymentController.text != '' && (valueDropDownSelected == 'Boleto' || valueDropDownSelected=='Pix ')){
                              var gen = Random();
                              int boleto = gen.nextInt(countAmount~/2)+50;
                              countAmount-= boleto;
                              countAmount = double.parse(countAmount.toStringAsFixed(2));
                              print(boleto);
                            }
                          });},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 1, 89, 100),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Text('Efetuar pagamento', style: TextStyle(fontSize: 16),)
                            ],
                          )
                      )
                  ),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}

class Transfer extends StatefulWidget {
  final double amount;
  const Transfer(this.amount, {Key? key}) : super(key: key);

  @override
  State<Transfer> createState() => _TransferState();
}

class _TransferState extends State<Transfer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: SingleChildScrollView(
        child: SizedBox(
          height: 700,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const H1('Transferências', 100),
              SmallCard('R\$ ${countAmount}', 'attach_money', 'Saldo da conta', 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Selecione o tipo de transferência:', style: TextStyle(
                      color: Color.fromARGB(255, 2, 53, 53), fontSize: 20
                  ),),
                  DropdownButtonExample(list2),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width:250,
                    height: 50,
                    child: TextFormField(
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]+[.]{0,1}[0-9]*')),
                        ],
                        controller: transferController,
                        decoration: const InputDecoration(
                            icon: Icon(Icons.monetization_on_outlined),
                            hintText: '00.00',
                            labelText: 'Valor da transferência',
                            border: OutlineInputBorder())

                    ),
                  ),
                  SizedBox(
                    width:250,
                    height: 50,
                    child: TextFormField(
                        controller: codeTransferController,
                        decoration: const InputDecoration(
                            icon: Icon(Icons.qr_code),
                            hintText: 'Código pix/TED',
                            labelText: 'Código da transferência',
                            border: OutlineInputBorder())

                    ),
                  ),
                  SizedBox(
                      width:300,
                      height:50,
                      child: ElevatedButton(
                          onPressed: (){
                            setState((){
                              if(transferController.text != '' && codeTransferController.text !=''){
                                if(valueDropDownSelected == 'TED' || valueDropDownSelected=='Pix') {
                                  countAmount -= double.parse(transferController.text);
                                  countAmount = double.parse(countAmount.toStringAsFixed(2));
                                }
                              }

                            });},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 1, 89, 100),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Text('Efetuar transferência', style: TextStyle(fontSize: 16),)
                            ],
                          )
                      )
                  ),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}

class Extracts extends StatelessWidget {
  const Extracts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: SingleChildScrollView(
        child: SizedBox(
          height: 700,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const H1('Extratos', 100),
              SizedBox(
                height: 560,
                child: ListView(children: const [
                  ExtractElement('Transferência', 'pix', 190, 'pix', '27 Nov'),
                  ExtractElement('Pagamento', 'C.Débito', 120, 'card', '27 Nov'),
                  ExtractElement('Dinheiro resgatado', 'poupança', 19, 'savings', '26 Nov'),
                  ExtractElement('Dinheiro guardado', 'poupança', 10, 'savings', '22 Nov'),
                  ExtractElement('Pagamento', 'pix', 90, 'pix', '19 Nov'),
                  ExtractElement('Pagamento', 'boleto', 20, 'attach_money', '28 Oct'),
                  ExtractElement('Transferência', 'pix', 12, 'pix', '27 Oct'),

                ],),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Savings extends StatefulWidget {
  final double amount;
  final double savings;
  final double profitSavings;
  const Savings(this.amount, this.savings, this.profitSavings, {Key? key}) : super(key: key);

  @override
  State<Savings> createState() => _SavingsState();
}

class _SavingsState extends State<Savings> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: SingleChildScrollView(
        child: SizedBox(
          height: 700,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const H1('Poupança', 100),
              MainDisplay(savingsAmount, 'Saldo Poupança'),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SmallCard('R\$ $countAmount', 'attach_money', 'Disponível para depósito',1),
                  SmallCard('R\$ $monthlyStonks', 'bar_chart_sharp', 'Rendimento mensal da conta',1),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width:300,
                          height: 50,
                          child: TextFormField(
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.allow(RegExp(r'[0-9]+[.]{0,1}[0-9]*')),
                              ],
                              controller: savingsController,
                              decoration: const InputDecoration(
                                  icon: Icon(Icons.inbox),
                                  hintText: '00.00',
                                  labelText: 'Valor',
                                  border: OutlineInputBorder())

                          ),
                        ),
                        const DropdownButtonExample(list7),
                        SizedBox(
                            width:300,
                            height:50,
                            child: ElevatedButton(
                                onPressed: (){
                                  setState(() {
                                    if(savingsController.text != ''){
                                      if (valueDropDownSelected=='Depositar') {
                                        savingsAmount+= double.parse(savingsController.text);
                                        countAmount-= double.parse(savingsController.text);
                                      }
                                      else if (valueDropDownSelected =='Resgatar') {
                                        savingsAmount-= double.parse(savingsController.text);
                                        countAmount+= double.parse(savingsController.text);
                                      }
                                      countAmount = double.parse(countAmount.toStringAsFixed(2));
                                      savingsAmount = double.parse(savingsAmount.toStringAsFixed(2));
                                  }});},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromARGB(255, 1, 89, 100),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: const [
                                    Text('Finalizar transação', style: TextStyle(fontSize: 16),)
                                  ],
                                )
                            )
                        ),
                      ],
                    ),
                  ),



                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Exchanging extends StatefulWidget {
  const Exchanging({Key? key}) : super(key: key);

  @override
  State<Exchanging> createState() => _ExchangingState();
}

class _ExchangingState extends State<Exchanging> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: SingleChildScrollView(
        child: SizedBox(
          height: 700,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const H1('Câmbio', 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallCard('R\$ $dollarCurrency', 'attach_money', 'Cotação Dólar USD', 0.75),
                  SmallCard('\$ $dollarAmount', 'attach_money', 'Sua carteira Dólar', 0.75)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallCard('R\$ $euroCurrency', 'euro', 'Cotação Euro', 0.75),
                  SmallCard('\u{20AC} $euroAmount', 'euro', 'Sua carteira Euro', 0.75),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallCard('R\$ $poundsCurrency', 'pounds', 'Cotação Libras', 0.75),
                  SmallCard('\u{00A3} $poundsAmount', 'pounds', 'Sua carteira Libras', 0.75),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width:200,
                      height: 50,
                      child: TextFormField(
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9]+[.]{0,1}[0-9]*')),
                          ],
                          decoration: const InputDecoration(
                              icon: Icon(Icons.input_outlined),
                              hintText: 'R\$ 00.00',
                              labelText: 'Valor',
                              border: OutlineInputBorder())

                      ),
                    ),
                    const DropdownButtonExample(list7),
                    const DropdownButtonExample(list3),
                    SizedBox(
                        width:200,
                        height:50,
                        child: ElevatedButton(
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(255, 1, 89, 100),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text('Concluir', style: TextStyle(fontSize: 16),)
                              ],
                            )
                        )
                    ),
                  ],
                ),
              ),


            ],),
        ),
      ),
    );
  }
}

class Recharging extends StatefulWidget {
  final double amount;
  const Recharging(this.amount, {Key? key}) : super(key: key);

  @override
  State<Recharging> createState() => _RechargingState();
}

class _RechargingState extends State<Recharging> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: SingleChildScrollView(
        child: SizedBox(
          height: 700,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const H1('Recargas', 100),
              SmallCard('R\$ ${countAmount}', 'attach_money', 'Saldo disponível', 1),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width:200,
                      height: 50,
                      child: TextFormField(
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9]+[.]{0,1}[0-9]*')),
                          ],
                          controller: rechargeController,
                          decoration: const InputDecoration(
                              icon: Icon(Icons.monetization_on_outlined),
                              hintText: '00.00',
                              labelText: 'Valor',
                              border: OutlineInputBorder())

                      ),
                    ),
                    SizedBox(
                      width:250,
                      height: 50,
                      child: TextFormField(
                          controller: cellphoneController,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          ],
                          decoration: const InputDecoration(
                              icon: Icon(Icons.phone),
                              hintText: '(xx) xxxxx-xxxx',
                              labelText: 'Número de Celular',
                              border: OutlineInputBorder())

                      ),
                    ),
                    SizedBox(
                        width:300,
                        height:50,
                        child: ElevatedButton(
                            onPressed: (){setState(() {
                              if(cellphoneController.text != '' && rechargeController.text !=''){
                                countAmount -= double.parse(rechargeController.text);
                                countAmount = double.parse(countAmount.toStringAsFixed(2));
                              }

                            });},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(255, 1, 89, 100),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text('Efetuar recarga', style: TextStyle(fontSize: 16),)
                              ],
                            )
                        )
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class Borrowing extends StatefulWidget {
  const Borrowing({Key? key}) : super(key: key);

  @override
  State<Borrowing> createState() => _BorrowingState();
}

class _BorrowingState extends State<Borrowing> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: SingleChildScrollView(
        child: SizedBox(
          height: 700,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const H1('Empréstimos', 100),
              MainDisplay(borrowingLimits, 'Faça um empréstimo com limite de até'),
              const SmallCard('Em até 24x sem juros', 'divide', 'Parcelas', 1),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width:260,
                      height: 50,
                      child: TextFormField(
                          controller: borrowingController,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9]+[.]{0,1}[0-9]*')),
                          ],
                          decoration: const InputDecoration(
                              icon: Icon(Icons.monetization_on_outlined),
                              hintText: '00.00',
                              labelText: 'Valor do Empréstimo',
                              border: OutlineInputBorder())

                      ),
                    ),
                    const DropdownButtonExample(list4),
                    SizedBox(
                        width:250,
                        height:50,
                        child: ElevatedButton(
                            onPressed: (){
                              setState(() {
                                if(borrowingController.text != '' && list4.contains(valueDropDownSelected)){
                                  double borrow = double.parse(borrowingController.text);
                                  if (borrow > borrowingLimits){
                                    borrow = borrowingLimits;
                                  }
                                  countAmount+= borrowingLimits;
                                  countAmount = double.parse(countAmount.toStringAsFixed(2));
                                }

                            });},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(255, 1, 89, 100),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text('Solicitar empréstimo', style: TextStyle(fontSize: 16),)
                              ],
                            )
                        )
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PolicyAssurance extends StatelessWidget {
  const PolicyAssurance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: SingleChildScrollView(
        child: SizedBox(
          height: 700,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              H1('Seguros', 100),
              DropdownButtonExample(list6)
            ],
          ),
        ),
      ),
    );
  }
}

class Invest extends StatefulWidget {
  const Invest( {Key? key}) : super(key: key);

  @override
  State<Invest> createState() => _InvestState();
}

class _InvestState extends State<Invest> {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: SingleChildScrollView(
        child: SizedBox(
          height: 700,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              H1('Investimentos', 100),
              MainDisplay(monthlyStonks, 'Na poupança esse mês seu dinheiro rendeu:'),
              H1('Outras formas de investimento:', 30),



            ],
          ),
        ),
      ),
    );
  }
}

class CreditCards extends StatefulWidget {
  const CreditCards({Key? key}) : super(key: key);

  @override
  State<CreditCards> createState() => _CreditCardsState();
}

class _CreditCardsState extends State<CreditCards> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: SingleChildScrollView(
        child: SizedBox(
          height: 700,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const H1('Cartões', 100),
              const DropdownButtonExample(list5),
              Container(
                height:(400), width:(800),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      width: 0
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        SmallCard('1234-5678-9111', 'number', 'Número do Cartão', 0.75),
                        SmallCard('Rick M Santos', 'title', 'Titular', 0.75),

                    ],),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        SmallCard('2/2029', 'expire', 'Data de vencimento', 0.75),
                        SmallCard('R\$ 2000.00', 'limit', 'Limite', 0.75),
                    ],),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SmallCard('R\$ $valueCard', 'credit', 'Fatura', 1.5)
                      ],
                    )
                  ],

                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width:200,
                    height:50,
                    child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 1, 89, 100),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text('Bloquear cartão', style: TextStyle(fontSize: 16),)
                          ],
                        )
                    ),
                  ),
                  SizedBox(
                    width:200,
                    height:50,
                    child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 1, 89, 100),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text('Aumentar limite', style: TextStyle(fontSize: 16),)
                          ],
                        )
                    ),
                  ),
                  SizedBox(
                    width:200,
                    height:50,
                    child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 1, 89, 100),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text('Segunda via', style: TextStyle(fontSize: 16),)
                          ],
                        )
                    ),
                  ),
                  SizedBox(
                    width:200,
                    height:50,
                    child: ElevatedButton(
                        onPressed: (){setState(() {
                          if (valueCard > 0 && countAmount > valueCard){
                            countAmount -= valueCard;
                            countAmount = double.parse(countAmount.toStringAsFixed(2));
                            valueCard = 0.00;
                          }
                        });},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 1, 89, 100),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text('Pagar fatura', style: TextStyle(fontSize: 16),)
                          ],
                        )
                    ),
                  )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}


//aux layouts

class SmallCard extends StatelessWidget {
  final String value;
  final String icon;
  final String description;
  final double multiply;
  const SmallCard(this.value, this.icon, this.description, this.multiply, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height:(110* multiply), width:(500 * multiply),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
            width: 0
        ),
        borderRadius: BorderRadius.circular(20 * multiply),
      ),
      child:Row(
          children:[
             Padding(
              padding: EdgeInsets.all(8.0 * multiply),
              child: Icon(iconsMap[icon],
                  color: const Color.fromARGB(255, 2, 53, 53),
                  size:50*multiply
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0 * multiply, 10.0 * multiply, 10.0 * multiply, 10.0 * multiply),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text(description, style: TextStyle(
                      color: Colors.blueGrey, fontSize: (25.0*multiply)
                  ),),
                  Text(value, style:  TextStyle(
                    fontSize: 40*multiply,
                    color: const Color.fromARGB(255, 2, 53, 53),
                  ),)

                ],
              ),
            ),

          ]
      )
      ,);
  }
}

class H1 extends StatelessWidget {
  final String header;
  final double size;
  const H1(this.header,this.size, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(header, style:  TextStyle(
    color: const Color.fromARGB(255, 2, 53, 53), fontSize: size
    ),);
  }
}

class MainDisplay extends StatelessWidget {
  final double value;
  final String description;
  const MainDisplay(this.value, this.description, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(description, style: const TextStyle(
            color: Colors.blueGrey, fontSize: 30
        ),),
        Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 1, 89, 100),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(200, 2, 53, 53),
                    spreadRadius: 3,
                    blurRadius: 30,
                    //blurStyle: BlurStyle.outer,
                    offset: Offset(0, 10))
              ],
              border: Border.all(
                  width: 0
              ),
              borderRadius: BorderRadius.circular(20),
            ),

            width: 800,
            child: Text('R\$ $value', style: const TextStyle(
              fontSize: 100,
              color: Colors.white,
            ),))

      ],
    );
  }
}

class ExtractElement extends StatelessWidget {
  final String type;
  final String method;
  final double value;
  final String icon;
  final String date;
  const ExtractElement(this.type, this.method, this.value, this.icon, this.date, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 3.0, 0.0, 3.0),
      child: Container(
        color: const Color.fromARGB(30, 2, 53, 53),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(iconsMap[icon],
                  color: const Color.fromARGB(255, 2, 53, 53),
                  size:50
              ),
            ),
            Column(
              children: [
                Text(type, style: const TextStyle(
                    color: Color.fromARGB(255, 2, 53, 53), fontSize: 25, fontWeight: FontWeight.bold
                ),),

                Text('R\$ $value', style:  const TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(150, 2, 53, 53),
                ),),
                Text(method, style:  const TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(150, 2, 53, 53),
                ),)
            ],),
            Text(date, style:  const TextStyle(
              fontSize: 25,
              color: Color.fromARGB(255, 2, 53, 53),
            ),)
        ],),
      ),
    );
  }
}

//pop ups



// DropdownButton

class DropdownButtonExample extends StatefulWidget {
  final List<String> list;
  const DropdownButtonExample(this.list, {super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  late String dropdownValue = widget.list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Color.fromARGB(200, 2, 53, 53), fontSize: 20),
      underline: Container(
        height: 2,
        color: const Color.fromARGB(200, 2, 53, 53),
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
          valueDropDownSelected = dropdownValue;
        });
      },
      items: widget.list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}