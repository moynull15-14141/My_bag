import 'package:flutter/material.dart';

void main() {
  runApp(const mybag());
}

class mybag extends StatefulWidget {
  const mybag({
    super.key,
  });

  @override
  State<mybag> createState() => _mybagState();
}

class _mybagState extends State<mybag> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(
          255,
          249,
          249,
          249,
        ),
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(
              255,
              249,
              249,
              249,
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    size: 33,
                  )),
            ]),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                mybagT(),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  height: 360,
                  width: 400,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Material(
                          elevation: 4,
                          borderRadius: BorderRadius.circular(10),
                          child: Row(
                            children: [
                              Image.asset(
                                'image/pt1.png',
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              prdName(),
                              const SizedBox(
                                width: 60,
                              ),
                              price(),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Material(
                          elevation: 4,
                          borderRadius: BorderRadius.circular(10),
                          child: Row(
                            children: [
                              Image.asset('image/pt2.png'),
                              const SizedBox(
                                width: 12,
                              ),
                              prdName2(),
                              const SizedBox(
                                width: 50,
                              ),
                              price()
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Material(
                          elevation: 4,
                          borderRadius: BorderRadius.circular(10),
                          child: Row(
                            children: [
                              Image.asset('image/pt3.png'),
                              const SizedBox(
                                width: 12,
                              ),
                              prdName3(),
                              const SizedBox(
                                width: 50,
                              ),
                              price()
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 100,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 165,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total amount :",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    Text(
                      "600 TK",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    const snackBar = SnackBar(
                      content: Text('Checkout clicked'),
                      duration: Duration(seconds: 2), // Optional duration
                    );
                    // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: Container(
                    height: 50,
                    width: 370,
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(30)),
                    child: const Center(
                      child: Text(
                        "CHECK OUT",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column price() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Icon(Icons.more_vert_sharp),
        SizedBox(
          height: 50,
        ),
        Text(
          "300 TK",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        )
      ],
    );
  }

  Column prdName() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Pullover',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        ),
        const Row(
          children: [
            Text(
              'Color : Black',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(
              width: 14,
            ),
            Text(
              'Size : L',
              style: TextStyle(fontSize: 14),
            )
          ],
        ),
        const SizedBox(
          height: 3,
        ),
        addremove(),
      ],
    );
  }

  Column prdName2() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'T-Shirt',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        ),
        const Row(
          children: [
            Text(
              'Color : White',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(
              width: 14,
            ),
            Text(
              'Size : XL',
              style: TextStyle(fontSize: 14),
            )
          ],
        ),
        const SizedBox(
          height: 3,
        ),
        addremove(),
      ],
    );
  }

  Column prdName3() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Sport Dress',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        ),
        const Row(
          children: [
            Text(
              'Color : White',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(
              width: 14,
            ),
            Text(
              'Size : M',
              style: TextStyle(fontSize: 14),
            )
          ],
        ),
        const SizedBox(
          height: 3,
        ),
        addremove(),
      ],
    );
  }

  Row addremove() {
    return Row(
      children: [
        Material(
          elevation: 4,
          borderRadius: BorderRadius.circular(50),
          child: Container(
            alignment: Alignment.center,
            height: 39,
            width: 39,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(50)),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.remove,
                  size: 24,
                )),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        const Text(
          '1',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(
          width: 15,
        ),
        Material(
          elevation: 4,
          borderRadius: BorderRadius.circular(50),
          child: Container(
            alignment: Alignment.center,
            height: 39,
            width: 39,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(50)),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  size: 24,
                )),
          ),
        ),
      ],
    );
  }

  Text mybagT() {
    return const Text(
      "My Bag",
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
    );
  }
}
