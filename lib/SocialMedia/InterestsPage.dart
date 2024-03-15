import 'package:flutter/material.dart';

class InterestsPage extends StatelessWidget {
  const InterestsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, size: 35.0, color: Color(0XFFFF9973)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        
      ),
      body: SingleChildScrollView(
        
          child: Padding(
            padding: const EdgeInsets.only(left: 35, right: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Interest",
                    style: TextStyle(fontSize: 40.0,  fontWeight: FontWeight.bold),
                  ),
                ),
                Center(
                  child: Text(
                    "Unlock the Secrets of Financial Success",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
                SizedBox(height: 30),
                Text("Financial Concept" , style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Income", style: TextStyle(fontWeight:FontWeight.normal, fontSize: 15.0,color: Colors.black),),
                             style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.only(left:10.0,right:10.0),
                              ),
                            ),
                          
                          
                             ElevatedButton(
                              onPressed: () {},
                              child: Text("Expenses", style: TextStyle(fontWeight:FontWeight.normal, fontSize: 15.0,color: Colors.black),),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.only(left:10.0,right:10.0),
                              ),
                            ),
                         
                          
                           ElevatedButton(
                              onPressed: () {},
                              child: Text("Assets", style: TextStyle(fontWeight:FontWeight.normal, fontSize: 15.0,color: Colors.black),),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.only(left:10.0,right:10.0),
                              ),
                            ),
                         
                          
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Liabilities", style: TextStyle(fontWeight:FontWeight.normal, fontSize: 15.0,color: Colors.black),),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.only(left:10.0,right:10.0),
                              ),
                            ),
                          
                        ],
                      ),
                      Row(
                        children: [
                          
                             ElevatedButton(
                              onPressed: () {},
                              child: Text("Budgeting", style: TextStyle(fontWeight:FontWeight.normal, fontSize: 15.0,color: Colors.black),),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.only(left:10.0,right:10.0),
                              ),
                            ),
                       
                          
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Cash Flow Management", style: TextStyle(fontWeight:FontWeight.normal, fontSize: 15.0,color: Colors.black),),
                             style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.only(left:10.0,right:10.0),
                              ),
                            ),
                          
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text("Financial Skills", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Creating Budget", style: TextStyle(fontWeight:FontWeight.normal, fontSize: 15.0,color: Colors.black),),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.only(left:10.0,right:10.0),
                              ),
                             
                            ),
                          
                          
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Tracking Expenses", style: TextStyle(fontWeight:FontWeight.normal, fontSize: 15.0,color: Colors.black),),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.only(left:10.0,right:10.0),
                              ),
                            ),
                            
                 
                        ],
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Paying Off Debt", style: TextStyle(fontWeight:FontWeight.normal, fontSize: 15.0,color: Colors.black),),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.only(left:10.0,right:10.0),
                              ),

                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Setting Financial Goals", style: TextStyle(fontWeight:FontWeight.normal, fontSize: 15.0,color: Colors.black),),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.only(left:10.0,right:10.0),
                              ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Saving Money", style: TextStyle(fontWeight:FontWeight.normal, fontSize: 15.0,color: Colors.black),),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.only(left:10.0,right:10.0),
                              ),
                          ),
                          
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text("Investment Knowledge", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Stocks", style: TextStyle(fontWeight:FontWeight.normal, fontSize: 15.0,color: Colors.black),),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.only(left:10.0,right:10.0),
                              ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Bonds", style: TextStyle(fontWeight:FontWeight.normal, fontSize: 15.0,color: Colors.black),),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.only(left:10.0,right:10.0),
                              ),
                          ),
                          
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Mutual Funds", style: TextStyle(fontWeight:FontWeight.normal, fontSize: 15.0,color: Colors.black),),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.only(left:10.0,right:10.0),
                              ),
                          ),
                          
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Real Estate", style: TextStyle(fontWeight:FontWeight.normal, fontSize: 15.0,color: Colors.black),),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.only(left:10.0,right:10.0),
                              ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Retirement Accounts", style: TextStyle(fontWeight:FontWeight.normal, fontSize: 15.0,color: Colors.black),),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.only(left:10.0,right:10.0),
                              ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Risk and Return", style: TextStyle(fontWeight:FontWeight.normal, fontSize: 15.0,color: Colors.black),),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.only(left:10.0,right:10.0),
                              ),
                          ),
                          
                        ],
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Diversification", style: TextStyle(fontWeight:FontWeight.normal, fontSize: 15.0,color: Colors.black),),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.only(left:10.0,right:10.0),
                              ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Investment Strategies", style: TextStyle(fontWeight:FontWeight.normal, fontSize: 15.0,color: Colors.black),),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.only(left:10.0,right:10.0),
                              ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text("Insurance and Risk Management", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Health Insurance", style: TextStyle(fontWeight:FontWeight.normal, fontSize: 15.0,color: Colors.black),),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.only(left:10.0,right:10.0),
                              ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                           child: Text("Life Insurance", style: TextStyle(fontWeight:FontWeight.normal, fontSize: 15.0,color: Colors.black),),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.only(left:10.0,right:10.0),
                              ),
                          ),
                          
                        ],
                      ),
                      Row(
                        children: [
                        ElevatedButton(
                            onPressed: () {},
                            child: Text("Auto Insurance", style: TextStyle(fontWeight:FontWeight.normal, fontSize: 15.0,color: Colors.black),),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.only(left:10.0,right:10.0),
                              ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Homeowners' Insurance", style: TextStyle(fontWeight:FontWeight.normal, fontSize: 15.0,color: Colors.black),),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.only(left:10.0,right:10.0),
                              ),
                          ),
                        
                          
                        ],
                      ),
                      Row(
                        children: [
                          
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Insurance in Risk Management", style: TextStyle(fontWeight:FontWeight.normal, fontSize: 15.0,color: Colors.black),),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.only(left:10.0,right:10.0),
                              ),
                          ),
                          
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text("Tax Awareness", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                           child: Text("Filing Taxes", style: TextStyle(fontWeight:FontWeight.normal, fontSize: 15.0,color: Colors.black),),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.only(left:10.0,right:10.0),
                              ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Deductions", style: TextStyle(fontWeight:FontWeight.normal, fontSize: 15.0,color: Colors.black),),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.only(left:10.0,right:10.0),
                              ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Credits", style: TextStyle(fontWeight:FontWeight.normal, fontSize: 15.0,color: Colors.black),),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.only(left:10.0,right:10.0),
                              ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Taxes Impact on Personal Finances", style: TextStyle(fontWeight:FontWeight.normal, fontSize: 15.0,color: Colors.black),),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.only(left:10.0,right:10.0),
                              ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text("Digital Financial Literacy", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600)),
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Online Banking", style: TextStyle(fontWeight:FontWeight.normal, fontSize: 15.0,color: Colors.black),),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.only(left:10.0,right:10.0),
                              ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Mobile Payment App", style: TextStyle(fontWeight:FontWeight.normal, fontSize: 15.0,color: Colors.black),),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.only(left:10.0,right:10.0),
                              ),
                          ),
                        ],
                      ),
                      SizedBox(height: 50),
                      ElevatedButton(
                      onPressed: (){}, 
                      child: Text("Continue", style: TextStyle(color: Colors.black,fontSize:18.0),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff7ecfe0),
                        fixedSize: Size(150, 40)
                      ),
                      ),
                      SizedBox(height: 20.0,),

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
