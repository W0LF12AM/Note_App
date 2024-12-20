// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:note_app_vtwo/settings/style_and_colors_utils.dart';
import 'package:note_app_vtwo/widget/card/cardLaporanHeader.dart';
import 'package:note_app_vtwo/widget/header/headerLaporanMobil.dart';

class UserheaderLaporanDetail extends StatefulWidget {
  UserheaderLaporanDetail(
      {super.key,
      required this.titlePage,
      required this.iconHeader,
      required this.nomor,
      required this.platNomor,
      required this.budget,
      required this.expense,
      required this.sisaBudget
      });

  final String titlePage;
  final String iconHeader;
  int nomor;
  final String platNomor;
  final String budget;
  final String expense;
  final String sisaBudget;


  @override
  State<UserheaderLaporanDetail> createState() =>
      _UserheaderLaporanDetailState();
}

class _UserheaderLaporanDetailState extends State<UserheaderLaporanDetail> {
   

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.maxFinite,
          height: MediaQuery.of(context).size.height * 0.36,
          decoration: BoxDecoration(color: mainColor),
          child: Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 40),
            child: Column(
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      widget.iconHeader,
                      color: secondaryColor,
                      width: MediaQuery.of(context).size.width * 0.05,
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      widget.titlePage,
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width * 0.017,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.025,
                ),
                Headerlaporanmobil(
                    platnomor: widget.platNomor,
                    navigate: () {},
                    textButton: 'Download')
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.28,
              left: 40,
              right: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Cardlaporanheader(
                colorGradient: budgetColor,
                titleCard: 'Budget',
                budget: widget.budget,
              ),
              Cardlaporanheader(
                colorGradient: expenseColor,
                titleCard: 'Pengeluaran',
                budget: widget.expense,
              ),
              Cardlaporanheader(
                colorGradient: mainColor,
                titleCard: 'Sisa',
                budget: widget.sisaBudget,
              )
            ],
          ),
        )
      ],
    );
  }
}
