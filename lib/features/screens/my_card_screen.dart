import 'package:flutter/material.dart';

class MyCardScreen extends StatefulWidget {
  const MyCardScreen({super.key});

  @override
  State<MyCardScreen> createState() => _MyCardScreenState();
}

class _MyCardScreenState extends State<MyCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F8),
      appBar: AppBar(title: const Text('My Card'), centerTitle: true),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Card(
            margin: EdgeInsets.all(0),
            color: Color(0xffF9F9F8),
            elevation: 10,
            shadowColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),

            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(120),

                      ),
                      color: Color(0xffE2F5E2),

                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),

                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('PLOT A', style: TextStyle(fontSize: 12,),),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffB4F1B7),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 2,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.water_drop_outlined,
                                    color: Colors.black,
                                    size: 12,
                                  ),
                                  const SizedBox(width: 4,),
                                  Text(
                                    'Irrigated',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Basmati Rice',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                size: 14,
                                color: Colors.grey[700],
                              ),
                              const SizedBox(width: 4),
                              Text(
                                'North Vally, 15 Acres',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 16),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Seeding Phase',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green.shade800,
                                ),
                              ),
                              Text(
                                '25%',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          LinearProgressIndicator(
                            value: 0.25,
                            color: Colors.green.shade800,
                            backgroundColor: Colors.grey,
                            minHeight: 6,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Est. Harvest: October 2026',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[900],
                            ),
                          ),
                          const SizedBox(height: 16),

                          Divider(),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: FilledButton(
                                  style: ButtonStyle(
                                    padding: WidgetStateProperty.all(
                                      EdgeInsets.all(0),
                                    ),
                                    minimumSize: WidgetStateProperty.all(
                                      Size(44, 44),
                                    ),
                                    maximumSize: WidgetStateProperty.all(
                                      Size(double.infinity, 44),
                                    ),
                                    backgroundColor: WidgetStateProperty.all(
                                      Colors.grey[200],
                                    ),
                                    shape: WidgetStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                          8,
                                        ),
                                      ),
                                    ),
                                  ),
                                  onPressed: _viewDetailsButton,
                                  child: Text(
                                    'View Details',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 4),
                              FilledButton(
                                style: ButtonStyle(
                                  padding: WidgetStateProperty.all(
                                    EdgeInsets.all(0),
                                  ),
                                  minimumSize: WidgetStateProperty.all(
                                    Size(44, 44),
                                  ),
                                  backgroundColor: WidgetStateProperty.all(
                                    Colors.grey[200],
                                  ),
                                  shape: WidgetStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                                onPressed: _moreVertButton,
                                child: Icon(
                                  Icons.more_horiz_outlined,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _viewDetailsButton() {
    //TODO: View Details Button
  }
  void _moreVertButton() {
    //TODO: More Vert Button
  }
}
