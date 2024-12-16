import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:note_app_vtwo/settings/style_and_colors_utils.dart';
import 'package:note_app_vtwo/widget/menuCard.dart';

class UserheaderLandingPage extends StatefulWidget {
  final Function(int) onItemTapped;

  UserheaderLandingPage({super.key, required this.onItemTapped});

  @override
  State<UserheaderLandingPage> createState() => _UserheaderLandingPageState();
}

class _UserheaderLandingPageState extends State<UserheaderLandingPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.maxFinite,
          height: 280,
          decoration: const BoxDecoration(color: mainColor),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hello, Username',
                          style: GoogleFonts.poppins(
                              fontSize: 50,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                      Text(
                        'Hope you always have a great day sir!',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('assets/calendar icon.svg'),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            'DD/MM/YYYY',
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.normal),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          SvgPicture.asset(
                            'assets/profile icon.svg',
                            width: 50,
                            height: 50,
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 190, left: 60),
          child: Row(children: [
            Menucard(
              iconMenu: 'assets/car icon.svg',
              titleMenu: 'Kelola \nMobil',
              description: 'Tambah entitas mobilmu disini',
              navigate: () {
                widget.onItemTapped(1);
              },
            ),
            Menucard(
              iconMenu: 'assets/report icon.svg',
              titleMenu: 'Laporan \nMobil',
              description: 'kelola laporan perawatan mobilmu disini',
              navigate: () {
                widget.onItemTapped(2);
              },
            ),
            Menucard(
              iconMenu: 'assets/setting icon.svg',
              titleMenu: 'Kelola \nBudget',
              description: 'Kelola pembiayaanmu disini',
              navigate: () {
                widget.onItemTapped(3);
              },
            ),
            Menucard(
              iconMenu: 'assets/expense icon.svg',
              titleMenu: 'kelola \nPengeluaran',
              description: 'Tambah pengeluaran mobilmu disini',
              navigate: () {
                widget.onItemTapped(4);
              },
            ),
          ]),
        )
      ],
    );
  }
}