import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:note_app_vtwo/settings/style_and_colors_utils.dart';
import 'package:note_app_vtwo/widget/dialog/dialogDataDisimpan.dart';

class Setbudgetform extends StatefulWidget {
  const Setbudgetform({super.key});

  @override
  State<Setbudgetform> createState() => _SetbudgetformState();
}

class _SetbudgetformState extends State<Setbudgetform> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.2),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        height: MediaQuery.of(context).size.height * 0.38,
        decoration: BoxDecoration(
            color: secondaryColor, borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.06,
                    left: 30,
                    bottom: 20),
                child: Row(
                  children: [
                    Text(
                      'Set / Update Budget',
                      style: GoogleFonts.poppins(
                          color: mainColor,
                          fontSize: MediaQuery.of(context).size.width * 0.02,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        decoration: BoxDecoration(
                            color: formColor,
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: TextField(
                            textAlign: TextAlign.start,
                            textAlignVertical: TextAlignVertical.center,
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.013),
                            decoration: InputDecoration(
                                hintText: 'Plat Nomor',
                                hintStyle: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.013,
                                ),
                                border: InputBorder.none,
                                suffixIcon: Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.grey,
                                  size: 50,
                                )),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        decoration: BoxDecoration(
                            color: formColor,
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: TextField(
                            textAlign: TextAlign.start,
                            textAlignVertical: TextAlignVertical.center,
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.013),
                            decoration: InputDecoration(
                                hintText: 'Tahun',
                                hintStyle: GoogleFonts.poppins(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.013,
                                    fontWeight: FontWeight.bold),
                                border: InputBorder.none,
                                suffixIcon: Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.grey,
                                  size: 50,
                                )),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        decoration: BoxDecoration(
                            color: formColor,
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: TextField(
                            textAlign: TextAlign.start,
                            textAlignVertical: TextAlignVertical.center,
                            style: GoogleFonts.poppins(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.013,
                                fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                              hintText: 'Budget',
                              hintStyle: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.013,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Dialog(
                                backgroundColor: Colors.transparent,
                                child: Dialogdatadisimpan(
                                  titleCard: 'Data Berhasil Disimpan',
                                  pesan:
                                      'Data budget yang sudah anda set \nberhasil disimpan',
                                ),
                              );
                            });
                      },
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return Dialog(
                                  backgroundColor: Colors.transparent,
                                  child: Dialogdatadisimpan(
                                      titleCard: 'Data Berhasil Disimpan',
                                      pesan:
                                          'Data yang sudah anda set \nberhasil dismpan'),
                                );
                              });
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.width * 0.12,
                          decoration: BoxDecoration(
                              color: mainColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              'Simpan',
                              style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
