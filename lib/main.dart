import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
          useMaterial3: true,
          textTheme: const TextTheme(
              bodyMedium:
                  TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
      home: const MunirsCard(),
    );
  }
}

class MunirsCard extends StatefulWidget {
  const MunirsCard({super.key});

  @override
  State<MunirsCard> createState() => _MunirsCardState();
}

class _MunirsCardState extends State<MunirsCard> {
  int viewindex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double hc(double inp) => size.height * (inp / 812);
    double wc(double inp) => size.width * (inp / 375);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: hc(96),
        leadingWidth: 0,
        titleSpacing: 0,
        backgroundColor: const Color.fromRGBO(70, 30, 168, 1),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(wc(16), hc(24), wc(10), hc(16)),
                padding:
                    EdgeInsets.fromLTRB(wc(5.6), hc(5.6), wc(5.6), hc(5.6)),
                width: wc(56),
                height: hc(56),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color.fromRGBO(96, 60, 185, 1),
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/image/webcam-toy-photo1.jpg',
                      width: wc(44.8),
                      height: hc(44.8),
                    ))),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Munir Karabaev",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(wc(10), hc(4), wc(10), hc(4)),
                  height: hc(26),
                  width: wc(84),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color.fromRGBO(96, 60, 185, 1),
                  ),
                  child: Text(
                    "8/12 visits",
                    style: TextStyle(color: Colors.grey, fontSize: wc(13)),
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(130, 0, 0, 0),
              height: hc(40),
              width: wc(40),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color.fromRGBO(96, 60, 185, 1),
              ),
              child: const Icon(
                Icons.notifications_active_rounded,
                size: 30,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          print(index);
          setState(() {
            viewindex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_active_rounded,
              size: 30,
              color: Colors.black,
            ),
            label: 'A',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 30,
              color: Colors.black,
            ),
            label: 'B',
          ),
        ],
      ),
      body: IndexedStack(
        index: viewindex,
        children: [
          Column(
            children: [
              ContainerWhite(
                margin: EdgeInsets.only(top: hc(16), left: wc(16)),
                padding: EdgeInsets.only(left: wc(16)),
                width: wc(343),
                height: hc(48),
                child: Row(
                  children: [
                    const Text("QR code",
                        style: TextStyle(fontSize: 16, color: Color(0xFF2B3843))),
                    Container(
                        margin: EdgeInsets.only(left: wc(240)),
                        child: const Icon(Icons.arrow_downward_outlined))
                  ],
                ),
              ),
              ContainerWhite(
                  width: wc(343),
                  height: hc(329),
                  margin: EdgeInsets.only(top: hc(12), left: wc(16)),
                  padding: EdgeInsets.only(top: hc(16)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/image/qrcodereal.jpg',
                        height: hc(242),
                        width: wc(246),
                        fit: BoxFit.cover,
                      ),
                      Row(
                        children: [
                          Container(
                            width: wc(64),
                            height: hc(34),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(48),
                              color: const Color(0xFF6E41DB),
                            ),
                            padding: EdgeInsets.fromLTRB(
                                wc(25.5), hc(7), wc(25.5), hc(7)),
                            margin: EdgeInsets.only(left: wc(103.5), top: hc(8)),
                            child: const Text(
                              "In",
                              style: TextStyle(color: Colors.white, fontSize: 17),
                            ),
                          ),
                          Container(
                            width: wc(64),
                            height: hc(34),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(48),
                              color: const Color(0xFFF2F2F2),
                            ),
                            padding: EdgeInsets.fromLTRB(
                                wc(19.5), hc(7), wc(19.5), hc(7)),
                            margin: EdgeInsets.only(left: wc(8), top: hc(8)),
                            child: const Text(
                              "Out",
                              style: TextStyle(color: Colors.black, fontSize: 17),
                            ),
                          )
                        ],
                      ),
                    ],
                  )),
              SizedBox(
                height: hc(16),
              ),
              const Text(
                'Show the QR Code to enter',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              SizedBox(
                height: hc(2),
              ),
              const Text(
                'Make sure you are close to the checking area',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              const Text(
                'Qr updates every 10 seconds',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              SizedBox(
                height: hc(99),
              ),
            ],
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}

class ContainerWhite extends StatelessWidget {
  final double? width;
  final double? height;
  final Widget? child;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  const ContainerWhite({
    super.key,
    this.child,
    this.margin,
    this.padding,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xFFFFFFFF),
      ),
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      child: child,
    );
  }
}
