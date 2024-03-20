import 'package:flutter/material.dart';

class FinancialCalendarPage extends StatelessWidget {
  const FinancialCalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: EdgeInsets.only(),
              child: Text(
                'Financial Calendar',
                style: TextStyle(
                    fontSize: 30.0,
                    color: Color(0XFFFF9973),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(),
              child: Icon(Icons.calendar_month,
                  size: 35.0, color: Color(0XFFFF9973)),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: double.infinity,
            height: 30,
            decoration: BoxDecoration(color: Colors.blueGrey[700]),
            child: const Padding(
              padding: EdgeInsets.only(right: 12.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Previous \nPrice',
                    style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.white,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(width: 4.0), //spacing
                  Text(
                    'Current \nPrice',
                    style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.white,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(width: 4.0), //spacing
                  Text(
                    'Forecast \nPrice',
                    style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.white,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(width: 4.0), //spacing
                  Text(
                    'Impact',
                    style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.white,
                        fontWeight: FontWeight.normal),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 635,
            decoration: const BoxDecoration(color: Colors.white),
            child: SingleChildScrollView(
                child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(6),
                      bottomRight: Radius.circular(6),
                      topLeft: Radius.circular(6),
                      topRight: Radius.circular(6),
                    ),
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                  ),
                  child: Align(
                      alignment: const AlignmentDirectional(-1, 0),
                      child: (Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                        child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 185,
                                height: 100,
                                color: Colors.grey[200],
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Malaysia GDP Growth Rate Q4 2023',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
                                      child: Image.network(
                                        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Flag_of_Malaysia.png/1200px-Flag_of_Malaysia.png',
                                        width: 38,
                                        height: 24,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const Text(
                                      'March 25, 2024 \n03:00 GMT+8',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 10.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Text('4.5%',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              const Text('4.8%',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              const Text('4.7%',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              const Text('High',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold)),
                              
                            ]),
                      ))),
                ),

                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(6),
                      bottomRight: Radius.circular(6),
                      topLeft: Radius.circular(6),
                      topRight: Radius.circular(6),
                    ),
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                  ),
                  child: Align(
                      alignment: const AlignmentDirectional(-1, 0),
                      child: (Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                        child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 185,
                                height: 100,
                                color: Colors.grey[200],
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Malaysia Unemployment Rate February 2024',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
                                      child: Image.network(
                                        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Flag_of_Malaysia.png/1200px-Flag_of_Malaysia.png',
                                        width: 38,
                                        height: 24,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const Text(
                                      'April 10, 2024 at 07:30 GMT+8',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 10.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Text('3.8%',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              const Text('3.6%',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              const Text('3.8%',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              Text('Med',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.yellow[700],
                                      fontWeight: FontWeight.bold)),
                              
                            ]),
                      ))),
                ),

                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(6),
                      bottomRight: Radius.circular(6),
                      topLeft: Radius.circular(6),
                      topRight: Radius.circular(6),
                    ),
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                  ),
                  child: Align(
                      alignment: const AlignmentDirectional(-1, 0),
                      child: (Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                        child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 185,
                                height: 100,
                                color: Colors.grey[200],
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Malaysia Interest Rate Decision',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
                                      child: Image.network(
                                        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Flag_of_Malaysia.png/1200px-Flag_of_Malaysia.png',
                                        width: 38,
                                        height: 24,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const Text(
                                      'May 2, 2024 at 15:00 GMT+8',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 10.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Text('2.5%',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              const Text('2.5%',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              const Text('2.5%',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              const Text('High',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold)),
                              
                            ]),
                      ))),
                ),

                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(6),
                      bottomRight: Radius.circular(6),
                      topLeft: Radius.circular(6),
                      topRight: Radius.circular(6),
                    ),
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                  ),
                  child: Align(
                      alignment: const AlignmentDirectional(-1, 0),
                      child: (Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                        child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 185,
                                height: 100,
                                color: Colors.grey[200],
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Malaysia Consumer Price Index (CPI) May 2024',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
                                      child: Image.network(
                                        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Flag_of_Malaysia.png/1200px-Flag_of_Malaysia.png',
                                        width: 38,
                                        height: 24,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const Text(
                                      ' June 18, 2024 at 09:00 GMT+8',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 10.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Text('2.0%',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              const Text('2.1%',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              const Text('2.2%',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              Text('Med',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.yellow[700],
                                      fontWeight: FontWeight.bold)),
                              
                            ]),
                      ))),
                ),

                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(6),
                      bottomRight: Radius.circular(6),
                      topLeft: Radius.circular(6),
                      topRight: Radius.circular(6),
                    ),
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                  ),
                  child: Align(
                      alignment: const AlignmentDirectional(-1, 0),
                      child: (Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                        child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 185,
                                height: 100,
                                color: Colors.grey[200],
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Malaysia Manufacturing PMI June 2024',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
                                      child: Image.network(
                                        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Flag_of_Malaysia.png/1200px-Flag_of_Malaysia.png',
                                        width: 38,
                                        height: 24,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const Text(
                                      'July 5, 2024 at 10:30 GMT+8',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 10.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Text('51.5%',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              const Text('52.3%',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              const Text('52.0%',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              Text('Med',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.yellow[700],
                                      fontWeight: FontWeight.bold)),
                              
                            ]),
                      ))),
                ),

                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(6),
                      bottomRight: Radius.circular(6),
                      topLeft: Radius.circular(6),
                      topRight: Radius.circular(6),
                    ),
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                  ),
                  child: Align(
                      alignment: const AlignmentDirectional(-1, 0),
                      child: (Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                        child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 185,
                                height: 100,
                                color: Colors.grey[200],
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Malaysia Trade Balance July 2024',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
                                      child: Image.network(
                                        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Flag_of_Malaysia.png/1200px-Flag_of_Malaysia.png',
                                        width: 38,
                                        height: 24,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const Text(
                                      'August 15, 2024 at 08:00 GMT+8',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 10.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Text('\$2.5B',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              const Text('\$3.2B',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              const Text('\$2.8B',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              Text('Med',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.yellow[700],
                                      fontWeight: FontWeight.bold)),
                              
                            ]),
                      ))),
                ),

                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(6),
                      bottomRight: Radius.circular(6),
                      topLeft: Radius.circular(6),
                      topRight: Radius.circular(6),
                    ),
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                  ),
                  child: Align(
                      alignment: const AlignmentDirectional(-1, 0),
                      child: (Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                        child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 185,
                                height: 100,
                                color: Colors.grey[200],
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Malaysia Retail Sales August 2024',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(6),
                                      child: Image.network(
                                        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Flag_of_Malaysia.png/1200px-Flag_of_Malaysia.png',
                                        width: 38,
                                        height: 24,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const Text(
                                      'September 20, 2024 at 12:30 GMT+8',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 10.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Text('6.5%',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              const Text('6.8%',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              const Text('6.0%',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              Text('Med',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.yellow[700],
                                      fontWeight: FontWeight.bold)),
                              
                            ]),
                      ))),
                ),
                
              ],
            )),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10.0,
        shape: const CircularNotchedRectangle(),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                bottom: 10.0,
              ),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.calendar_month,
                      size: 40.0, color: Color(0xffff9973))),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0, right: 20.0),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.chat, size: 40.0, color: Color(0xffff9973))),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0, left: 20.0),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.account_balance_wallet,
                    size: 40,
                    color: Color(0xffff9973),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 10.0,
              ),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.legend_toggle_rounded,
                    size: 40,
                    color: Color(0xffff9973),
                  )),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.document_scanner),
        backgroundColor: const Color(0xffff9973),
        foregroundColor: Colors.white,
        shape: const CircleBorder(),
      ),
    );
  }
}