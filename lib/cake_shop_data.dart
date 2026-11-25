class CakeShop {
  const CakeShop({
    required this.id,
    required this.name,
    required this.address,
    required this.phone,
    required this.hours,
    required this.description,
    required this.website,
    required this.facebook,
    required this.latitude,
    required this.longitude,
  });

  final int id;
  final String name;
  final String address;
  final String phone;
  final String hours;
  final String description;
  final String website;
  final String facebook;
  final double latitude;
  final double longitude;

  String photo(int number) => 'assets/images/s$id$number.jpg';
}

const cakeShops = [
  CakeShop(
    id: 1,
    name: 'Yellow Spoon Pastry',
    address: 'โครงการเอกมัย คอมเพล็กซ์ (ระหว่างเอกมัย 19 และ 21)',
    phone: '0854822842',
    hours: 'ทุกวัน 10.00–20.00 น.',
    description: 'ร้านขนมหวานสูตรลดน้ำตาล มีทั้งชีสเค้ก ทาร์ต บานอฟฟี่ '
        'ช็อกโกแลตเค้ก และเค้กวันเกิดให้เลือกทั้งแบบชิ้นและแบบปอนด์',
    website: 'https://www.yellowspoonpastry.com/',
    facebook: 'https://www.facebook.com/yspastry/',
    latitude: 13.736634,
    longitude: 100.587512,
  ),
  CakeShop(
    id: 2,
    name: 'Vista Cafe by Verasu',
    address: 'อาคารวีรสุ ถนนวิทยุ',
    phone: '022548100',
    hours: 'ทุกวัน 09.00–19.00 น.',
    description: 'คาเฟ่และเบเกอรี่ที่เน้นขนมสำหรับคนรักสุขภาพ '
        'คัดเลือกวัตถุดิบและมีเมนูเบเกอรี่ให้เลือกหลายแบบ',
    website: 'http://www.vistacafe.co.th/',
    facebook: 'https://www.facebook.com/vistacafe/',
    latitude: 13.7403,
    longitude: 100.547417,
  ),
  CakeShop(
    id: 3,
    name: 'Sweet Spell',
    address: 'สี่แยกเหม่งจ๋าย ประชาอุทิศ 19',
    phone: '0846666828',
    hours: '10.00–20.00 น. (หยุดทุกวันที่ 15 ของเดือน)',
    description: 'ร้านเค้กที่เปิดมาตั้งแต่ปี 2009 มีขนมให้เลือกหลายแบบ '
        'เช่น เครปเค้ก ชูครีม บานอฟฟี่ และชีสพาย',
    website: 'http://www.sweetspell.com/dessert-menu/',
    facebook: 'https://www.facebook.com/sweetspellcafe/',
    latitude: 13.771741,
    longitude: 100.586662,
  ),
  CakeShop(
    id: 4,
    name: 'Larna House',
    address: 'พัฒนาการ 61',
    phone: '023215995',
    hours: 'ทุกวัน 09.00–21.00 น.',
    description: 'คิดถึงเค้กช็อกโกแลต ต้องนึกถึง Larna House '
        'จุดเด่นคือเค้กช็อกโกแลตเข้มข้นสูตรต้นตำรับจากสิงคโปร์ '
        'ทางร้านคัดสรรวัตถุดิบและมีประสบการณ์กว่า 20 ปีในการทำเค้กวันเกิด '
        'เนื้อเค้กหอม นุ่มละมุน และชุ่มฉ่ำด้วยช็อกโกแลต',
    website: 'https://larnahouse.com/',
    facebook: 'https://www.facebook.com/%20larnahouse',
    latitude: 13.730245,
    longitude: 100.658385,
  ),
  CakeShop(
    id: 5,
    name: 'I bake & You take',
    address: 'วิภาวดีรังสิต 60',
    phone: '0934499447',
    hours: 'ทุกวัน 07.30–19.30 น.',
    description: 'ร้านเค้กโฮมเมดสไตล์ฝรั่งเศส รับทำเค้กตามสั่ง '
        'มีทั้งเค้กวันเกิด คัพเค้ก คุกกี้ และบราวนี่',
    website: 'https://ibakeyoutake.com/',
    facebook: 'https://www.facebook.com/ibakeyoutakebysine/',
    latitude: 13.864575,
    longitude: 100.5823,
  ),
  CakeShop(
    id: 6,
    name: 'Coffee bean by dao',
    address: 'ชั้น G สยามพารากอน',
    phone: '026109702',
    hours: 'ทุกวัน 10.00–22.00 น.',
    description: 'ร้านเค้กและกาแฟที่มีเค้กให้เลือกหลายรส '
        'เช่น เรนโบว์เค้ก ช็อกโกแลตมูสเค้ก และเค้กนมสด',
    website: 'http://www.coffeebeans.co.th/',
    facebook: 'https://www.facebook.com/CoffeeBeansbyDao',
    latitude: 13.7469267,
    longitude: 100.5349883,
  ),
  CakeShop(
    id: 7,
    name: 'Bake Ministry',
    address: 'สุขุมวิท 26',
    phone: '0891540474',
    hours: '10.00–18.00 น. (หยุดวันอาทิตย์)',
    description: 'ร้านเค้กโฮมเมดที่เริ่มจากการรับทำตามสั่ง '
        'มีทั้งคัพเค้ก เค้กวันเกิด เค้กแต่งงาน และเค้กสำหรับโอกาสพิเศษ',
    website: 'http://www.bakeministry.net/',
    facebook: 'https://www.facebook.com/bakeministry/',
    latitude: 13.7281129,
    longitude: 100.5705757,
  ),
];