import 'package:flutter/material.dart';

class BannerCard extends StatelessWidget {
  const BannerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Colors.grey.withOpacity(0.7),
            spreadRadius: 2,
            blurStyle: BlurStyle.outer,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 18, left: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: const Text(
                    "Hasta 35% off en frutas y verduras seleccionadas",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        fontFamily: "HelveticaNeue"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: MaterialButton(
                    height: 25,
                    padding: const EdgeInsets.all(0),
                    onPressed: () {},
                    shape: const StadiumBorder(
                      side: BorderSide(
                        width: 1,
                      ),
                    ),
                    child: Text(
                      "Ver oferta",
                      style: TextStyle(
                          fontSize: 14,
                          color: Theme.of(context).secondaryHeaderColor),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child:
                // SvgPicture.asset(
                //   "assets/images/banner.svg",
                //   height: 10,
                // ),
                Image.asset(
              "assets/images/banner.png",
              filterQuality: FilterQuality.high,
            ),
          ),
        ],
      ),
    );
  }
}
