import 'package:flutter/material.dart';

class My2Page extends StatefulWidget {
  const My2Page({super.key});

  @override
  State<My2Page> createState() => _My2PageState();
}

class _My2PageState extends State<My2Page> {
  bool isLoading = true;
  @override
  void initState() {
    isLoading = true;
    Future.delayed(const Duration(seconds: 4), () {
      isLoading = false;
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: 6,
            itemBuilder: (context, index) {
              return isLoading
                  ? Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          width: 100,
                          height: 100,
                          decoration: const BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadiusDirectional.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 100,
                              height: 20,
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Container(
                              width: 150,
                              height: 20,
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Container(
                              width: 200,
                              height: 20,
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Container(
                              width: 100,
                              height: 20,
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  : Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          width: 100,
                          height: 100,
                          decoration: const BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadiusDirectional.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Image.network(
                              'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png'),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 100,
                              height: 20,
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 234, 234, 234),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: const Center(child: Text('Hello')),
                            ),
                            const SizedBox(height: 5),
                            Container(
                              width: 150,
                              height: 20,
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 234, 234, 234),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: const Center(child: Text('I\'m Sardor')),
                            ),
                            const SizedBox(height: 5),
                            Container(
                              width: 200,
                              height: 20,
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 234, 234, 234),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: const Center(child: Text('Hehe')),
                            ),
                            const SizedBox(height: 5),
                            Container(
                              width: 100,
                              height: 20,
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 234, 234, 234),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: const Center(child: Text('Good Bye')),
                            ),
                          ],
                        ),
                      ],
                    );
            },
          ),
        )
      ],
    ));
  }
}
