import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:note_app_vtwo/Page/Kelola_Mobil_Page.dart';
import 'package:note_app_vtwo/Page/Landing_Page.dart';
import 'package:note_app_vtwo/Page/Laporan_Detil_Permobil_Page.dart';
import 'package:note_app_vtwo/Page/Laporan_Permobil_Menu_Page.dart';
import 'package:note_app_vtwo/Page/Set_Budget_Page.dart';
import 'package:note_app_vtwo/settings/style_and_colors_utils.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  // int? _selectedTruckId;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // if (index == 4) {
    //   // Misalnya, jika truckId adalah 2
    //   _selectedTruckId = 2; // Ganti dengan truckId yang sesuai
    //   setState(() {
    //     _selectedIndex = 4; // Ubah indeks untuk menampilkan halaman detail
    //   });
    // }
  }

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Sidebar
          Container(
            width: MediaQuery.of(context).size.width * 0.05, // Lebar sidebar
            color: secondaryColor,
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 20, bottom: 20, left: 5, right: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      _onItemTapped(0);
                    },
                    child: SvgPicture.asset(
                      'assets/Note Logo.svg',
                      width: MediaQuery.of(context).size.width * 0.07,
                      height: MediaQuery.of(context).size.height * 0.07,
                    ),
                  ),
                  // Menu Items
                  Column(
                    children: [
                      GestureDetector(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: _selectedIndex == 0
                                  ? mainColor
                                  : secondaryColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: SvgPicture.asset(
                            'assets/home button.svg',
                            width: MediaQuery.of(context).size.width * 0.04,
                            height: MediaQuery.of(context).size.height * 0.04,
                            color: _selectedIndex == 0
                                ? secondaryColor
                                : mainColor,
                          ),
                        ),
                        onTap: () {
                          _onItemTapped(0);
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: _selectedIndex == 1
                                  ? mainColor
                                  : secondaryColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: SvgPicture.asset(
                            'assets/car icon.svg',
                            width: MediaQuery.of(context).size.width * 0.04,
                            height: MediaQuery.of(context).size.height * 0.04,
                            color: _selectedIndex == 1
                                ? secondaryColor
                                : mainColor,
                          ),
                        ),
                        onTap: () {
                          _onItemTapped(1);
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: _selectedIndex == 2 || _selectedIndex == 4
                                  ? mainColor
                                  : secondaryColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: SvgPicture.asset(
                            'assets/report icon.svg',
                            width: MediaQuery.of(context).size.width * 0.04,
                            height: MediaQuery.of(context).size.height * 0.04,
                            color: _selectedIndex == 2 || _selectedIndex == 4
                                ? secondaryColor
                                : mainColor,
                          ),
                        ),
                        onTap: () {
                          _onItemTapped(2);
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: _selectedIndex == 3
                                  ? mainColor
                                  : secondaryColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: SvgPicture.asset(
                            'assets/setting icon.svg',
                            width: MediaQuery.of(context).size.width * 0.04,
                            height: MediaQuery.of(context).size.height * 0.04,
                            color: _selectedIndex == 3
                                ? secondaryColor
                                : mainColor,
                          ),
                        ),
                        onTap: () {
                          _onItemTapped(3);
                        },
                      ),
                    ],
                  ),

                  GestureDetector(
                    onTap: () {
                      exit(0);
                    },
                    child: SvgPicture.asset(
                      'assets/exit icon.svg',
                      color: mainColor,
                      width: MediaQuery.of(context).size.width * 0.04,
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Body
          Expanded(
              child: IndexedStack(index: _selectedIndex, children: [
            LandingPage(
              onItemTapped: _onItemTapped,
            ),
            const KelolaMobilPage(),
            LaporanPermobilMenuPage(onItemTapped: _onItemTapped),
            const SetBudgetPage(),
            LaporanDetilPermobilPage(
              onItemTapped: _onItemTapped,
              truckId: 2,
            )
          ])),
        ],
      ),
    );
  }
}
