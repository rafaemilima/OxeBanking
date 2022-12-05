import 'package:flutter/material.dart';
const List<String> list1 = <String>['Pix', 'Boleto'];
const List<String> list2 = <String>['TED', 'Pix'];
const Map<String, IconData> iconsMap = {
  'attach_money': Icons.attach_money,
  'bar_chart_sharp': Icons.bar_chart_sharp,
  'savings': Icons.savings,
  'pix': Icons.pix,
  'card':Icons.payment,
  'euro':Icons.euro,
  'pounds': Icons.currency_pound,
  'bitcoin': Icons.currency_bitcoin
};

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

      home: InitialScreen()
    );

  }
}

class InitialScreen extends StatelessWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(100, 150, 237, 255),
      appBar: AppBar(toolbarHeight: 200, leading: Container(),
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network('images/cancer.png', fit: BoxFit.cover, width:240),
              Text('OxeBanking', style: TextStyle(fontSize: 100)),
            ],
          ),
        ),

        backgroundColor: Color.fromARGB(255, 1, 89, 100),),
      body: LoginScreen(),
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
      Container(
        height:200,

        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width:300,
            child: TextFormField(
              decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'xxxx-x',
              labelText: 'Conta',
              border: OutlineInputBorder())

            ),
      ),
          Container(
            width:300,
            child: const TextField(
              obscureText: true,
              decoration: InputDecoration(
              icon: Icon(Icons.password),
              border: OutlineInputBorder(),
              labelText: 'Senha'
              ),
        )
      ),
          Container(
            width:300,
            child: ElevatedButton(
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
  Container() ], ) ,
  ),
  ],
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
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network('images/cancer.png', fit: BoxFit.cover, width:150),
              Text('OxeBanking', style: TextStyle(fontSize: 80)),
            ],
          ),
        ),

        backgroundColor: Color.fromARGB(255, 1, 89, 100),),
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
              scrollDirection: Axis.vertical,
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
            child: const Text('Conta ', style: TextStyle(fontSize: 20),),
          ),
          TextButton(
            onPressed: () {
              sectionClick(1);
            },
            child: const Text('Pagamentos ', style: TextStyle(fontSize: 20)),
          ),
          TextButton(
            onPressed: () {
              sectionClick(2);
            },
            child: const Text('Transferências ', style: TextStyle(fontSize: 20)),
          ),
          TextButton(
            onPressed: () {
              sectionClick(3);
            },
            child: const Text('Extratos ', style: TextStyle(fontSize: 20)),
          ),
          TextButton(
            onPressed: () {
              sectionClick(4);
            },
            child: const Text('Poupança ', style: TextStyle(fontSize: 20)),
          ),
          TextButton(
            onPressed: () {
              sectionClick(5);
            },
            child: const Text('Cartões ', style: TextStyle(fontSize: 20)),
          ),
          TextButton(
            onPressed: () {
              sectionClick(6);
            },
            child: const Text('Empréstimos ', style: TextStyle(fontSize: 20)),
          ),
          TextButton(
            onPressed: () {
              sectionClick(7);
            },
            child: const Text('Recarga ', style: TextStyle(fontSize: 20)),
          ),
          TextButton(
            onPressed: () {
              sectionClick(8);
            },
            child: const Text('Seguro ', style: TextStyle(fontSize: 20)),
          ),
          TextButton(
            onPressed: () {
              sectionClick(9);
            },
            child: const Text('Câmbio ', style: TextStyle(fontSize: 20)),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Sair ', style: TextStyle(fontSize: 20)),
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
            child: LayoutSection(this.index)

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
      return const Account(10.35, 100.67, 2.17, 'Rick');
    }
    else if(index==1) {
      return const Payment(10.35);
    }
    else if(index==2) {
      return const Transfer(10.35);
    }
    else if(index==3) {
      return const Extracts();
    }
    else if (index==4){
      return const Savings(10.35, 100.67, 3.17);
    }
    else if (index==5){
      return Container();
    }
    else if (index==6){
      return Container();
    }
    else if (index==7){
      return Container();
    }
    else if (index==8){
      return Container();
    }

    else{
      return const Exchanging();
    }
  }
}

class Account extends StatelessWidget {
  final double amount;
  final double savings;
  final double profit;
  final String name;
  const Account(this.amount,this.savings, this.profit,this.name, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          H1('Bem vindo de volta, $name!', 70),
          MainDisplay(amount, 'Saldo disponível'),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SmallCard(savings, 'savings', 'Dinheiro guardado'),
              SmallCard(profit, 'bar_chart_sharp', 'Rendimento mensal'),

            ],
          )
        ],
      ),
    );
  }
}

class Payment extends StatelessWidget {
  final double amount;
  const Payment(this.amount, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  H1('Pagamentos', 100),
                  SmallCard(amount, 'attach_money', 'Saldo da conta'),
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
                      Container(
                        width:300,
                        height: 50,
                        child: TextFormField(
                            decoration: const InputDecoration(
                                icon: Icon(Icons.inbox),
                                hintText: 'Código pix/boleto',
                                labelText: 'Código do pagamento',
                                border: OutlineInputBorder())

                        ),
                      ),
                      Container(
                          width:300,
                          height:50,
                          child: ElevatedButton(
                              onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(255, 0, 143, 160),
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
              )),
    );
  }
}

class Transfer extends StatelessWidget {
  final double amount;
  const Transfer(this.amount, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              H1('Transferências', 100),
              SmallCard(amount, 'attach_money', 'Saldo da conta'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Selecione o tipo de transferência:', style: TextStyle(
                      color: Color.fromARGB(255, 2, 53, 53), fontSize: 20
                  ),),
                  DropdownButtonExample2(list2),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width:300,
                    height: 50,
                    child: TextFormField(
                        decoration: const InputDecoration(
                            icon: Icon(Icons.inbox),
                            hintText: 'Código pix/TED',
                            labelText: 'Código da transferência',
                            border: OutlineInputBorder())

                    ),
                  ),
                  Container(
                      width:300,
                      height:50,
                      child: ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 0, 143, 160),
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
          )),
    );
  }
}

class Extracts extends StatelessWidget {
  const Extracts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          H1('Extratos', 100),
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
    );
  }
}

class Savings extends StatelessWidget {
  final double amount;
  final double savings;
  final double profitSavings;
  const Savings(this.amount, this.savings, this.profitSavings, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          H1('Poupança', 100),
          MainDisplay(savings, 'Saldo Poupança'),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SmallCard(amount, 'attach_money', 'Disponível para depósito'),
              SmallCard(profitSavings, 'bar_chart_sharp', 'Rendimento mensal da conta'),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width:300,
                      height: 50,
                      child: TextFormField(
                          decoration: const InputDecoration(
                              icon: Icon(Icons.inbox),
                              hintText: '00.00',
                              labelText: 'Valor',
                              border: OutlineInputBorder())

                      ),
                    ),
                    Container(
                        width:300,
                        height:50,
                        child: ElevatedButton(
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 0, 143, 160),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text('Depositar valor', style: TextStyle(fontSize: 16),)
                              ],
                            )
                        )
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width:300,
                      height: 50,
                      child: TextFormField(
                          decoration: const InputDecoration(
                              icon: Icon(Icons.outbox),
                              hintText: '00.00',
                              labelText: 'Valor',
                              border: OutlineInputBorder())

                      ),
                    ),
                    Container(
                        width:300,
                        height:50,
                        child: ElevatedButton(
                            onPressed: (){
                              },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 0, 143, 160),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text('Retirar valor', style: TextStyle(fontSize: 16),)
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
    );;
  }
}

class Exchanging extends StatelessWidget {
  const Exchanging({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          H1('Câmbio', 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SmallerCard(5.22, 'attach_money', 'Cotação Dólar USD', 'R\$'),
              SmallerCard(10.00, 'attach_money', 'Sua carteira Dólar', '\$')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SmallerCard(5.51, 'euro', 'Cotação Euro', 'R\$'),
              SmallerCard(0.00, 'euro', 'Sua carteira Euro', '\u{20AC}'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SmallerCard(6.44, 'pounds', 'Cotação Libras', 'R\$'),
              SmallerCard(0.00, 'pounds', 'Sua carteira Libras', '\u{00A3}'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width:200,
                  height: 50,
                  child: TextFormField(
                      decoration: const InputDecoration(
                          icon: Icon(Icons.input_outlined),
                          hintText: 'R\$ 00.00',
                          labelText: 'Valor',
                          border: OutlineInputBorder())

                  ),
                ),
                Container(
                  width:250,
                  height: 50,
                  child: TextFormField(
                      decoration: const InputDecoration(
                          icon: Icon(Icons.money),
                          hintText: '(usd, euro ou libras)',
                          labelText: 'Moeda de conversão',
                          border: OutlineInputBorder())

                  ),
                ),
                Container(
                    width:300,
                    height:50,
                    child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 0, 143, 160),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text('Depositar valor', style: TextStyle(fontSize: 16),)
                          ],
                        )
                    )
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width:200,
                  height: 50,
                  child: TextFormField(
                      decoration: const InputDecoration(
                          icon: Icon(Icons.output_outlined),
                          hintText: 'R\$ 00.00',
                          labelText: 'Valor',
                          border: OutlineInputBorder())

                  ),
                ),
                Container(
                  width:250,
                  height: 50,
                  child: TextFormField(
                      decoration: const InputDecoration(
                          icon: Icon(Icons.money),
                          hintText: '(usd, euro ou libras)',
                          labelText: 'Moeda de conversão',
                          border: OutlineInputBorder())

                  ),
                ),
                Container(
                    width:300,
                    height:50,
                    child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 0, 143, 160),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text('Resgatar da carteira', style: TextStyle(fontSize: 16),)
                          ],
                        )
                    )
                ),
              ],
            ),
          ),


        ],),
    );
  }
}


//aux layouts

class SmallCard extends StatelessWidget {
  final double value;
  final String icon;
  final String description;
  const SmallCard(this.value, this.icon, this.description, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height:110, width:500,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
            width: 0
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child:Row(
          children:[
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(iconsMap[icon],
                  color: const Color.fromARGB(255, 2, 53, 53),
                  size:50
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text(description, style: const TextStyle(
                      color: Colors.blueGrey, fontSize: 25
                  ),),
                  Text('R\$ $value', style:  const TextStyle(
                    fontSize: 40,
                    color: Color.fromARGB(255, 2, 53, 53),
                  ),)

                ],
              ),
            ),

          ]
      )
      ,);
  }
}

class SmallerCard extends StatelessWidget {
  final double value;
  final String icon;
  final String description;
  final String symbol;
  const SmallerCard(this.value, this.icon, this.description, this.symbol, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height:75, width:375,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
            width: 0
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child:Row(
          children:[
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Icon(iconsMap[icon],
                  color: const Color.fromARGB(255, 2, 53, 53),
                  size:50
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 7.5, 7.5, 7.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text(description, style: const TextStyle(
                      color: Colors.blueGrey, fontSize: 18
                  ),),
                  Text('$symbol $value', style:  const TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 2, 53, 53),
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
              color: const Color.fromARGB(255, 0, 143, 160),
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
        color: Color.fromARGB(30, 2, 53, 53),
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

// DropdownButton

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample(list, {super.key});


  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list1.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Color.fromARGB(200, 2, 53, 53), fontSize: 20),
      underline: Container(
        height: 2,
        color: Color.fromARGB(200, 2, 53, 53),
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list1.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DropdownButtonExample2 extends StatefulWidget {
  const DropdownButtonExample2(list, {super.key});


  @override
  State<DropdownButtonExample2> createState() => _DropdownButtonExampleState2();
}

class _DropdownButtonExampleState2 extends State<DropdownButtonExample2> {
  String dropdownValue = list2.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Color.fromARGB(200, 2, 53, 53), fontSize: 20),
      underline: Container(
        height: 2,
        color: Color.fromARGB(200, 2, 53, 53),
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list2.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}