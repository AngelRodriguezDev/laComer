import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.elliptical(50, 25),
            topRight: Radius.elliptical(50, 25),
            bottomLeft: Radius.circular(15),
          ),
          child: BottomAppBar(
            shadowColor: Colors.black,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomMenuItem(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/images/home.svg",
                  ),
                  label: "Inicio",
                ),
                CustomMenuItem(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/images/Ofertas.svg",
                  ),
                  label: "Descuentos",
                ),
                CustomMenuItem(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/images/icono carrito.svg",
                  ),
                  label: "Carrito",
                ),
                CustomMenuItem(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/images/corazon.svg",
                  ),
                  label: "Wishlist",
                ),
                CustomMenuItem(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/images/usuario.svg",
                  ),
                  label: "Mi Cuenta",
                ),
              ],
            ),
          ),
        ),
        Positioned.fill(
          child: Container(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  width: 1.0,
                  color: Colors.grey,
                ),
              ),
              borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomMenuItem extends StatelessWidget {
  final String label;
  final SvgPicture icon;
  final GestureTapCallback onPressed;
  const CustomMenuItem({
    super.key,
    required this.label,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 20,
            child: icon,
          ),
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
