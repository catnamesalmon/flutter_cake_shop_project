import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'cake_shop_data.dart';
import 'cake_shop_detail_ui.dart';

class CakeShopListUI extends StatelessWidget {
  const CakeShopListUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('สายด่วนกินเค้ก'),
        backgroundColor: const Color(0xFFFF0000),
      ),
      body: Column(
        children: [
          const SizedBox(height: 6),
          CarouselSlider.builder(
            itemCount: cakeShops.length,
            options: CarouselOptions(
              height: 210,
              viewportFraction: 0.8,
              autoPlay: true,
              enlargeCenterPage: false,
            ),
            itemBuilder: (context, index, realIndex) {
              final number = (index + 1).toString().padLeft(2, '0');
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.asset(
                    'assets/images/ck$number.png',
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
          Expanded(
            child: ListView.separated(
              itemCount: cakeShops.length,
              separatorBuilder: (_, _) => const Divider(
                height: 1,
                color: Color(0xFFF1D2DD),
              ),
              itemBuilder: (context, index) {
                final shop = cakeShops[index];
                return ListTile(
                  minTileHeight: 94,
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Image.asset(
                      shop.photo(1),
                      width: 86,
                      height: 58,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(shop.name, style: const TextStyle(fontSize: 18)),
                  subtitle: Text(shop.phone, style: const TextStyle(fontSize: 16)),
                  trailing: const Icon(Icons.info, color: Color(0xFFC62828)),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (_) => CakeShopDetailUI(shop: shop),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}