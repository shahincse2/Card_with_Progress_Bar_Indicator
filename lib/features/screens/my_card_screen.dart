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
      appBar: AppBar(
        title: const Text('My Card'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 10,
            shadowColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),

            child: Expanded(
              child: Container(
                height: 200,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('PLOT A'),
                              Container(
                                //height: 30,
                                //width: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xffB4F1B7),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(Icons.water_drop_outlined, color: Colors.black, size: 12,),
                                        Text('Irrigated',style: TextStyle(color: Colors.black, fontSize: 12,),),
                                      ],
                                    ),
                                  ),
                              ),
                            ],
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Basmati Rice', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                              Row(
                                children: [
                                  Icon(Icons.location_on_outlined, size: 14, color: Colors.grey[700],),
                                  const SizedBox(width: 4,),
                                  Text('North Vally, 15 Acres', style: TextStyle(fontSize: 12, color: Colors.grey[700]),),
                                ],
                              ),

                              const SizedBox(height: 16,),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Seeding Phase', style: TextStyle(fontSize: 12, color: Colors.green[700]),),
                                  Text('25%', style: TextStyle(fontSize: 12, color: Colors.green[700]),),
                                ],
                              ),
                              const SizedBox(height: 4,),
                              LinearProgressIndicator(
                                value: 0.5,
                                color: Colors.green,
                                backgroundColor: Colors.grey,
                                minHeight: 6,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              const SizedBox(height: 8,),
                              Text('Est. Harvest: October 2026', style: TextStyle(fontSize: 12, color: Colors.grey[900],),),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
