import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pruebatecnica/data/product_list.dart';
import 'package:pruebatecnica/model/product_model.dart';
import 'package:pruebatecnica/view/widgets/banner_widget.dart';
import 'package:pruebatecnica/view/widgets/bottom_bar_widget.dart';
import 'package:pruebatecnica/view/widgets/button_widget.dart';
import 'package:pruebatecnica/view/widgets/product_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    List<ProductModel> list = getProductList;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .75,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Theme.of(context).secondaryHeaderColor,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: DropdownButton<String>(
                            isDense: true,
                            style: const TextStyle(fontSize: 15),
                            hint: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                "Cambiar sucursal",
                                style: TextStyle(
                                  color: Theme.of(context).secondaryHeaderColor,
                                ),
                              ),
                            ),
                            icon: SvgPicture.asset(
                              "assets/images/Icono cambiar de sucursal.svg",
                              height: 10,
                            ),
                            items: <String>[
                              "Cambiar Sucursal",
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (value) {},
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                size: 24,
                                color: Theme.of(context).secondaryHeaderColor,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Sucursal Norte",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset("assets/images/Icono de menu.svg"),
                    ),
                  ],
                ),
                Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Flexible(
                      flex: 4,
                      child: CustomInputText(
                        hint: "Buscar productos",
                        icon: Icons.search,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        margin: const EdgeInsets.only(right: 7),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Theme.of(context).primaryColor,
                            width: 1.5,
                          ),
                          color: Colors.amber[50],
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            "assets/images/icono filtro.svg",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const BannerCard(),
                TabBar(
                  controller: _tabController,
                  labelPadding: const EdgeInsets.all(10),
                  tabAlignment: TabAlignment.center,
                  indicatorColor: Theme.of(context).secondaryHeaderColor,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorWeight: 3,
                  labelStyle: TextStyle(
                      color: Theme.of(context).secondaryHeaderColor,
                      fontWeight: FontWeight.bold),
                  unselectedLabelStyle:
                      const TextStyle(fontWeight: FontWeight.normal),
                  unselectedLabelColor: Theme.of(context).secondaryHeaderColor,
                  tabs: const [
                    Tab(text: "Todo"),
                    Tab(
                      text: "Frutas y verduras",
                    ),
                    Tab(
                      text: "Carnes",
                    ),
                    Tab(text: "Abarrotes"),
                  ],
                ),
                SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: Center(
                    child: Wrap(
                      spacing: 25,
                      runSpacing: 10,
                      children: list
                          .map((product) => CustomProductCard(product: product))
                          .toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomBar(),
    );
  }
}
