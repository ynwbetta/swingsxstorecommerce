import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../components/dropdown_design.dart';
import '../components/option_list.dart';
import '../components/search_boy.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  final TextEditingController _searchController = TextEditingController();
  void handleSelectChange(String option) {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff06244A),
        toolbarHeight: 80,
        title: Padding(
          padding:
              const EdgeInsets.only(left: 10, top: 24, bottom: 24, right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons/logo.svg'),
              const Gap(8),
              const Text(
                'Swingsxtore',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffFFFFFF),
                ),
              ),
              const Gap(111),
              SearchBoy(
                hintText: 'Search for a product',
                controller: _searchController,
              ),
              const Gap(148),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/icons/Vector.svg'),
                      Column(
                        children: [
                          const Text(
                            'Hello,',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                          Row(
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Sign in / Sign up',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffFFFFFF),
                                  ),
                                ),
                              ),
                              SvgPicture.asset(
                                'assets/icons/keyboard_arrow_down.svg',
                                color: const Color(0xffFFFFFF),
                              )
                            ],
                          ),
                        ],
                      ),
                      const Gap(16),
                      Padding(
                        padding: const EdgeInsets.only(top: 4, left: 12),
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/icons/notifications.svg'),
                            const Gap(16),
                            SvgPicture.asset('assets/icons/shopping_cart.svg'),
                            const Gap(4),
                            const Text(
                              'Cart',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SizedBox(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: const Color(0xff041C3B),
                height: 64,
                child: Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      DropdownDesign(
                          labelText: '',
                          options: category,
                          onSelectionChanged: handleSelectChange,
                          width: 216,
                          hintText: 'All Categories'),
                      const Gap(83),
                      const Padding(
                        padding: EdgeInsets.only(top: 23, bottom: 23),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Fashion',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                      const Gap(30),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Electronics',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                      const Gap(30),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Skin Care',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                      const Gap(30),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Home Appliances',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                      const Gap(30),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Sports',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                      const Gap(30),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Groceries',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                      const Gap(30),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Others',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
