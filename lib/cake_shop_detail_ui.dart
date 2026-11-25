import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

import 'cake_shop_data.dart';

class CakeShopDetailUI extends StatelessWidget {
  const CakeShopDetailUI({super.key, required this.shop});

  final CakeShop shop;

  Future<void> _open(BuildContext context, Uri uri) async {
    try {
      if (await launchUrl(uri)) return;
    } on Exception {
      // แจ้งผู้ใช้เมื่ออุปกรณ์เปิดลิงก์ไม่ได้
    }

    if (!context.mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('อุปกรณ์นี้เปิดลิงก์ไม่ได้')),
    );
  }

  Widget _photo(int number) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(
        shop.photo(number),
        width: 120,
        height: 80,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _section(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.w600)),
          Text(value),
        ],
      ),
    );
  }

  Widget _link(
    BuildContext context,
    String url,
    FaIconData icon,
    Color color,
  ) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
      leading: FaIcon(icon, color: color, size: 22),
      title: Text(url),
      trailing: const Icon(Icons.link),
      onTap: () => _open(context, Uri.parse(url)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final location = LatLng(shop.latitude, shop.longitude);

    return Scaffold(
      appBar: AppBar(
        title: Text(shop.name),
        backgroundColor: const Color(0xFFF44336),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Center(child: _photo(1)),
          const SizedBox(height: 16),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 16,
            runSpacing: 16,
            children: [_photo(2), _photo(3)],
          ),
          const SizedBox(height: 20),
          _section('ชื่อร้าน 🏪', shop.name),
          _section('เวลาเปิดปิด ⏰', shop.hours),
          _section('รายละเอียดของร้าน 🍵', shop.description),
          _section('ที่อยู่ของร้าน 🚩', shop.address),
          Center(
            child: FilledButton.icon(
              style: FilledButton.styleFrom(
                backgroundColor: const Color(0xFF4CAF50),
                foregroundColor: Colors.white,
              ),
              onPressed: () =>
                  _open(context, Uri(scheme: 'tel', path: shop.phone)),
              icon: const Icon(Icons.phone, size: 18),
              label: Text(shop.phone),
            ),
          ),
          _link(context, shop.website, FontAwesomeIcons.globe, Colors.amber),
          _link(context, shop.facebook, FontAwesomeIcons.facebook, Colors.blue),
          const SizedBox(height: 10),
          SizedBox(
            height: 380,
            child: Stack(
              children: [
                FlutterMap(
                  options: MapOptions(initialCenter: location, initialZoom: 15),
                  children: [
                    TileLayer(
                      urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                      userAgentPackageName: 'com.example.flutter_cake_shop_project',
                    ),
                    MarkerLayer(
                      markers: [
                        Marker(
                          point: location,
                          width: 48,
                          height: 48,
                          child: const Icon(
                            Icons.location_on,
                            color: Colors.red,
                            size: 42,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: ColoredBox(
                    color: Colors.white,
                    child: InkWell(
                      onTap: () => _open(
                        context,
                        Uri.parse('https://www.openstreetmap.org/copyright'),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                        child: Text(
                          '© OpenStreetMap contributors',
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}