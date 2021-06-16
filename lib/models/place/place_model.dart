class Place {
  String imageUrl;
  String name;
  String address;
  String shortDescription;
  String description;

  Place({
    this.imageUrl,
    this.name,
    this.address,
    this.description,
    this.shortDescription,
  });
}

final List<Place> places = [
  Place(
    name: 'abay',
    imageUrl: 'Asset/images/abay/abay_1.jpg',
    address:
        'Gish Abay is a town in west-central Ethiopia. Located in the Mirab (West) Gojjam Zone of the Amhara Region,  The town is named after the nearby Mount Gish and the Abay River (Blue Nile) whose source is in the foothills of the mountain.',
    description:
        "The Blue Nile (Amharic: ጥቁር አባይ, romanized: T’ik’uri Ābayi; Arabic: النيل الأزرق‎, romanized: an-Nīl al-ʾAzraqu) is a river originating at Lake Tana in Ethiopia. It travels for approximately 1,450 km (900 mi) through Ethiopia and Sudan. Along with the White Nile, it is one of the two major tributaries of the Nile, and supplies about 80% of the water in the Nile during the rainy season.",
  ),
  Place(
    name: 'abay',
    imageUrl: 'Asset/images/abay/abay_2.jpg',
    address:
        'Gish Abay is a town in west-central Ethiopia. Located in the Mirab (West) Gojjam Zone of the Amhara Region,  The town is named after the nearby Mount Gish and the Abay River (Blue Nile) whose source is in the foothills of the mountain.',
    description:
        "The Blue Nile (Amharic: ጥቁር አባይ, romanized: T’ik’uri Ābayi; Arabic: النيل الأزرق‎, romanized: an-Nīl al-ʾAzraqu) is a river originating at Lake Tana in Ethiopia. It travels for approximately 1,450 km (900 mi) through Ethiopia and Sudan. Along with the White Nile, it is one of the two major tributaries of the Nile, and supplies about 80% of the water in the Nile during the rainy season.",
  ),
  Place(
    name: 'Baher Dar',
    imageUrl: 'Asset/images/abay/abay_3.jpg',
    address: 'Ethiopia Amhara Region',
    description:
        "Bahir Dar is the capital city of the Amhara region in northern Ethiopia. It’s a port on the south shore of the huge inland Lake Tana. Dek Island is one of many islands in the lake that are home to medieval monasteries. On the Zege Peninsula, the Ura Kidane Mihret monastery is known for its elaborate, colorful murals. The Blue Nile River snakes southeast of the city toward the towering cliffs at the Blue Nile Falls.",
  ),
];
