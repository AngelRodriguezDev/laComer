import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pruebatecnica/model/product_model.dart';

class CustomProductCard extends StatefulWidget {
  final ProductModel product;
  const CustomProductCard({super.key, required this.product});

  @override
  State<CustomProductCard> createState() => _CustomProductCardState();
}

class _CustomProductCardState extends State<CustomProductCard> {
  bool isWished = false;
  bool count = false;
  @override
  Widget build(BuildContext context) {
    ProductModel product = widget.product;
    return Container(
      width: 160,
      height: 140,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              spreadRadius: 10,
              color: Colors.grey.shade100,
              offset: const Offset(0, 0),
            )
          ]),
      child: Stack(
        children: [
          Positioned(
            top: 15,
            left: 35,
            child: Image(
              image: product.image,
              height: 60,
            ),
          ),
          Positioned(
            right: 1,
            child: IconButton(
              onPressed: () {
                setState(() {
                  isWished = !isWished;
                });
              },
              icon: isWished
                  ? SvgPicture.asset("assets/images/icono wishlist activo.svg")
                  : SvgPicture.asset("assets/images/icono wishlist.svg"),
            ),
          ),
          Positioned(
            left: 5,
            bottom: 35,
            child: SizedBox(
              width: 50,
              child: Text(
                product.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                ),
              ),
            ),
          ),
          Positioned(
            right: 7,
            bottom: 48,
            child: Text(
              "\$${product.price}",
              style: TextStyle(
                color: Theme.of(context).secondaryHeaderColor,
                fontSize: 10,
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              product.measurement,
              style: const TextStyle(
                fontSize: 10,
              ),
            ),
          ),
          Positioned(
            right: 1,
            bottom: 1,
            child: IconButton(
              visualDensity: VisualDensity.compact,
              onPressed: () {},
              padding: const EdgeInsets.all(0),
              icon: count
                  ? Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).secondaryHeaderColor,
                          ),
                          borderRadius: BorderRadius.circular(50)),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                count = false;
                              });
                            },
                            child: SvgPicture.asset(
                              "assets/images/icono menos.svg",
                              height: 20,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4.0),
                            child: Text("1kg"),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {});
                            },
                            child: SvgPicture.asset(
                              "assets/images/icono mas.svg",
                              height: 20,
                            ),
                          ),
                        ],
                      ),
                    )
                  : GestureDetector(
                      onTap: () {
                        setState(() {
                          count = true;
                        });
                      },
                      child: SvgPicture.asset(
                        "assets/images/icono mas.svg",
                        height: 30,
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
