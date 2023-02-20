import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  double amount = 0;
  double rate = 0;
  double year = 0;
  double mi = 0;
  double ta = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade300,
        centerTitle: true,
        title: Text(
          "Emi Calculator",
          style: TextStyle(
            letterSpacing: 2,
          ),
        ),
        leading: Center(
          child: Icon(Icons.calculate_outlined),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 115,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.blue.shade300,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "Select Amount",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                "₹ ${amount.toInt()}",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xff4d38a1),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Slider(
                      activeColor: Color(0xff4d38a1),
                      inactiveColor: Colors.white,
                      value: amount,
                      thumbColor: Colors.white,
                      divisions: 100,
                      max: 10000000,
                      onChanged: (value) {
                        setState(() {
                          amount = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 115,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.blue.shade300,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "Select Rate of Intrest",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                "${rate.toInt()} %",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xff4d38a1),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Slider(
                      activeColor: Color(0xff4d38a1),
                      inactiveColor: Colors.white,
                      thumbColor: Colors.white,
                      value: rate,
                      max: 30,
                      onChanged: (value) {
                        setState(() {
                          rate = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 115,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.blue.shade300,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "Select Term",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                "${year.toInt()}",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xff4d38a1),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Slider(
                      activeColor: Color(0xff4d38a1),
                      inactiveColor: Colors.white,
                      thumbColor: Colors.white,
                      value: year,
                      max: 30,
                      onChanged: (value) {
                        setState(() {
                          year = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  mi=amount.toInt()*rate.toInt()/100;
                  ta=mi*12*year.toInt()+amount;
                });
              },
              child: Container(
                height: 50,
                width: double.infinity,
                child: Center(
                  child: Text(
                    "Calculator",
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 2,
                      fontSize: 20
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.blue.shade300,
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 150,
                width: 225,
                decoration: BoxDecoration(
                  color: Colors.blue.shade300,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Monthly Installment",
                      style: TextStyle(
                          letterSpacing: 2, fontSize: 20, color: Colors.white),
                    ),
                    Container(
                      height: 100,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          "₹ ${mi.toInt()}",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.blue.shade300,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 150,
                width: 225,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue.shade300,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Total Amount",
                      style: TextStyle(
                          letterSpacing: 2, fontSize: 20, color: Colors.white),
                    ),
                    Container(
                      height: 100,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          "₹ ${ta.toInt()}",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.blue.shade300,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
