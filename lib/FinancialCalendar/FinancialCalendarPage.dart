import 'package:flutter/material.dart';

class FinancialCalendarPage extends StatelessWidget {
  const FinancialCalendarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 60),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blueGrey.shade700
            ),
            child: const Padding(
              padding: EdgeInsets.only(right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Previous \nPrice',
                    style: TextStyle(
                      fontSize: 10.0,
                      color: Colors.white,
                      fontWeight: FontWeight.normal
                    )
                  ),
                  SizedBox(width: 4.0), //spacing
                  Text(
                    'Current \nPrice',
                    style: TextStyle(
                      fontSize: 10.0,
                      color: Colors.white,
                      fontWeight: FontWeight.normal
                    )
                  ),
                  SizedBox(width: 4.0), //spacing
                  Text(
                    'Forecast \nPrice',
                    style: TextStyle(
                      fontSize: 10.0,
                      color: Colors.white,
                      fontWeight: FontWeight.normal
                    ),
                  ),
                  SizedBox(width: 4.0), //spacing
                  Text(
                    'Impact',
                    style: TextStyle(
                      fontSize: 10.0,
                      color: Colors.white,
                      fontWeight: FontWeight.normal
                    ),
                  )
                ],
              )
            )
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(6)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
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
                                )
                              ]
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '4.5%',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 9.0), 
                              Text(
                                '4.8%',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 9.0), 
                              Text(
                                '4.7%',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 12.0), 
                              Text(
                                'High',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 9.0)
                            ],
                          ),
                        )
                      ],
                    )
                  ),
                  const SizedBox(height: 4),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(6)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
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
                                )
                              ]
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '4.5%',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 9.0), 
                              Text(
                                '4.8%',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 9.0), 
                              Text(
                                '4.7%',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 12.0), 
                              Text(
                                'High',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 9.0)
                            ],
                          ),
                        )
                      ],
                    )
                  ),
                  const SizedBox(height: 4),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(6)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
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
                                )
                              ]
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '4.5%',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 9.0), 
                              Text(
                                '4.8%',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 9.0), 
                              Text(
                                '4.7%',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 12.0), 
                              Text(
                                'High',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 9.0)
                            ],
                          ),
                        )
                      ],
                    )
                  ),
                  const SizedBox(height: 4),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(6)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
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
                                )
                              ]
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '4.5%',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 9.0), 
                              Text(
                                '4.8%',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 9.0), 
                              Text(
                                '4.7%',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 12.0), 
                              Text(
                                'High',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 9.0)
                            ],
                          ),
                        )
                      ],
                    )
                  ),
                  const SizedBox(height: 4),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(6)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
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
                                )
                              ]
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '4.5%',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 9.0), 
                              Text(
                                '4.8%',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 9.0), 
                              Text(
                                '4.7%',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 12.0), 
                              Text(
                                'High',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 9.0)
                            ],
                          ),
                        )
                      ],
                    )
                  ),
                  const SizedBox(height: 4),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(6)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
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
                                )
                              ]
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '4.5%',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 9.0), 
                              Text(
                                '4.8%',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 9.0), 
                              Text(
                                '4.7%',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 12.0), 
                              Text(
                                'High',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 9.0)
                            ],
                          ),
                        )
                      ],
                    )
                  ),
                  const SizedBox(height: 4),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(6)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
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
                                )
                              ]
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '4.5%',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 9.0), 
                              Text(
                                '4.8%',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 9.0), 
                              Text(
                                '4.7%',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 12.0), 
                              Text(
                                'High',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 9.0)
                            ],
                          ),
                        )
                      ],
                    )
                  ),
                  const SizedBox(height: 4),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(6)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
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
                                )
                              ]
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '4.5%',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 9.0), 
                              Text(
                                '4.8%',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 9.0), 
                              Text(
                                '4.7%',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 12.0), 
                              Text(
                                'High',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 9.0)
                            ],
                          ),
                        )
                      ],
                    )
                  ),
                  const SizedBox(height: 4),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(6)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
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
                                )
                              ]
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '4.5%',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 9.0), 
                              Text(
                                '4.8%',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 9.0), 
                              Text(
                                '4.7%',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 12.0), 
                              Text(
                                'High',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 9.0)
                            ],
                          ),
                        )
                      ],
                    )
                  ),
                  const SizedBox(height: 4),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(6)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
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
                                )
                              ]
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '4.5%',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 9.0), 
                              Text(
                                '4.8%',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 9.0), 
                              Text(
                                '4.7%',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 12.0), 
                              Text(
                                'High',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 9.0)
                            ],
                          ),
                        )
                      ],
                    )
                  ),
                  const SizedBox(height: 4),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(6)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
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
                                )
                              ]
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '4.5%',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 9.0), 
                              Text(
                                '4.8%',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 9.0), 
                              Text(
                                '4.7%',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 12.0), 
                              Text(
                                'High',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 9.0)
                            ],
                          ),
                        )
                      ],
                    )
                  ),
                  const SizedBox(height: 4),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(6)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
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
                                )
                              ]
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '4.5%',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 9.0), 
                              Text(
                                '4.8%',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 9.0), 
                              Text(
                                '4.7%',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 12.0), 
                              Text(
                                'High',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox(width: 9.0)
                            ],
                          ),
                        )
                      ],
                    )
                  ),
                ],
              )
            )
          )
        ]
      )
    );
  }
}