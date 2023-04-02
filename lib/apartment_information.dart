import 'package:flutter/material.dart';

class AppartmentInfromation extends StatefulWidget {
  const AppartmentInfromation({Key? key}) : super(key: key);

  @override
  State<AppartmentInfromation> createState() => _AppartmentInfromationState();
}

class _AppartmentInfromationState extends State<AppartmentInfromation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            Text(
              'Back',
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
        actions: [
          Text(
            'Booking Details',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 600,
          width: double.infinity,
          color: Colors.grey[350],
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20)),
                  height: 40,
                  width: 40,
                  child: Icon(
                    Icons.shopping_basket_sharp,
                    color: Colors.white,
                  )),
              SizedBox(
                height: 10,
              ),
              Text(
                'Apartment Information',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'The following are the property information',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.accessibility),
                        Container(
                          height: 40,
                          width: 40,
                          color: Colors.red,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.add),
                        Container(
                          height: 40,
                          width: 40,
                          color: Colors.green,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.accessibility),
                        Container(
                          height: 40,
                          width: 40,
                          color: Colors.red,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.add),
                        Container(
                          height: 40,
                          width: 40,
                          color: Colors.green,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.accessibility),
                        Container(
                          height: 40,
                          width: 40,
                          color: Colors.red,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.add),
                        Container(
                          height: 40,
                          width: 40,
                          color: Colors.green,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.accessibility),
                        Container(
                          height: 40,
                          width: 40,
                          color: Colors.red,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.add),
                        Container(
                          height: 40,
                          width: 40,
                          color: Colors.green,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.accessibility),
                        Container(
                          height: 40,
                          width: 40,
                          color: Colors.red,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.add),
                        Container(
                          height: 40,
                          width: 40,
                          color: Colors.green,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.accessibility),
                        Container(
                          height: 40,
                          width: 40,
                          color: Colors.red,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.add),
                        Container(
                          height: 40,
                          width: 40,
                          color: Colors.green,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.accessibility),
                        Container(
                          height: 40,
                          width: 40,
                          color: Colors.red,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.add),
                        Container(
                          height: 40,
                          width: 40,
                          color: Colors.green,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.accessibility),
                        Container(
                          height: 40,
                          width: 40,
                          color: Colors.red,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.add),
                        Container(
                          height: 40,
                          width: 40,
                          color: Colors.green,
                        )
                      ],
                    )
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
