import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:step1/interface/components/app/appbar/appbar.dart';
import 'package:step1/interface/screens/app/dashboard.dart';
import 'package:step1/interface/screens/app/transfer.dart';
import 'package:step1/interface/screens/app/wallet.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Dashboard(),
    WalletScreen(),
    TransferPage(),
    // Text(
    //   'Index 2: School',
    //   style: optionStyle,
    // ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        //backgroundColor: Theme.of(context).cardColor,
        backgroundColor: Theme.of(context).primaryColorDark,
        
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,  color: Theme.of(context).primaryColor,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet, color: Theme.of(context).primaryColor,),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.paperPlane,  color: Theme.of(context).primaryColor,),
            label: 'Transfer',
          ),
        ],
        currentIndex: _selectedIndex,
       // selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
} 
