import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/button.dart';
import 'package:flutter_application_1/widgets/currency_card.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xFF181818),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [   
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children:[
                    Text('Hey,jessie',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                    ),
                    ),
                    Text(
                      'Welcome back',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 17,                      
                      ),
                    ),],),
                  ],
                ),
                SizedBox(
                  height: 50, 
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 20
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  '\$5 194 482',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 44,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Button(text: 'Transfer', bgColor: Color(0xFFF2B33A), textColor: Colors.black,),
                  Button(text: 'Request', bgColor: Color(0xFF1F2123), textColor: Colors.white,),
                ],
                ),
                SizedBox( height: 70,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text('Wallets',
                    style: TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text('View All',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white.withOpacity(0.8),
                    ),),
                ],),
                const SizedBox(height: 20,),
          
                CurrencyCard(name: 'Euro', code: 'EUR', amount: '6 428', icon: Icons.euro_rounded,isInverted:false,order: 1,),
                
                CurrencyCard(name: 'Bitcoin', code: 'BTC', amount: '9 785', icon: Icons.currency_bitcoin,isInverted:true,order: 2,),
                CurrencyCard(name: 'Dollar', code: 'USD', amount: '428', icon: Icons.attach_money_outlined,isInverted:false,order: 3,),
              ],
              ),
            ),
          ),
      ),
    ); 
  }
}