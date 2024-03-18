import 'package:flutter/material.dart';
import 'package:abovhack/HomePage.dart';

class AccountPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, size: 35.0, color: Color(0XFFFF9973)),
          onPressed: () {
            Navigator.push(
             context,MaterialPageRoute(builder: ((context) => HomePage())),
              );
          },
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10.0,
        shape: CircularNotchedRectangle(),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom :10.0,),
              child: IconButton(
                onPressed: (){}, 
                icon:Icon(Icons.account_balance_wallet, size:40.0, color:Color(0xffff9973))),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom :10.0,right: 20.0),
              child: IconButton(
                onPressed: (){}, 
                icon:Icon(Icons.bar_chart_sharp, size:40.0,color: Color(0xffff9973))),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom :10.0,left: 20.0),
              child: IconButton(
                onPressed: (){}, 
                icon:Icon(Icons.calendar_month, size:40, color:Color(0xffff9973),)),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom :10.0,),
              child: IconButton(
                onPressed: (){}, 
                icon:Icon(Icons.legend_toggle_rounded,size: 40,color: Color(0xffff9973),)),
            ),
            
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.home),
        backgroundColor: Color(0xffff9973),
        foregroundColor: Colors.white,
        shape: CircleBorder(),
        ),
    );
  }
}