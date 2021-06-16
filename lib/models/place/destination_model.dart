import 'package:ethiopia/models/place/activity_model.dart';

class PlaceDescription {
  String imageUrl;
  String placeName;
  String description;
  String shortDescription;
  List<Activity> activities;
  PlaceDescription(
      {this.imageUrl,
      this.placeName,
      this.description,
      this.shortDescription,
      this.activities});
}


List<PlaceDescription> destinationPlace = [
  PlaceDescription(
    placeName: 'Gonder',
    imageUrl: 'assets/images/gonder/gonder_3.jpg',
    description:
        "Gondar, or Gonder, is a city in northern Ethiopia. It's known for the walled Fasil Ghebbi fortress and palace compound, once the seat of Ethiopian emperors. Dominating it is the immense 17th-century castle of Emperor Fasilides, which combines Portuguese, Indian and local architectural styles. Outside the complex is Debre Berhan Selassie church, with an interior of elaborate murals, including a ceiling of faces.",
    shortDescription: "Gondar, or Gonder, is a city in northern Ethiopia.",
  ),
  PlaceDescription(
    placeName: 'Abay',
    imageUrl: 'assets/images/abay/abay_1.jpg',
    description:
        " The Blue Nile (Amharic: ጥቁር አባይ, romanized: T’ik’uri Ābayi; Arabic: النيل الأزرق‎, romanized: an-Nīl al-ʾAzraqu) is a river originating at Lake Tana in Ethiopia. It travels for approximately 1,450 km (900 mi) through Ethiopia and Sudan. Along with the White Nile, it is one of the two major tributaries of the Nile, and supplies about 80% of the water in the Nile during the rainy season. ",
    shortDescription: "Gish Abay is a town in west-central Ethiopia.",
  ),
  PlaceDescription(
    placeName: 'Afar',
    imageUrl: 'assets/images/afar/afar_1.png',
    description:
        "Afar Region, formerly known as Region 2, is a regional state in northeastern Ethiopia and the homeland of the Afar people. Its capital is the planned city of Semera, which lies on the paved Awash–Assab highway.",
    shortDescription: "Afar Region, formerly known as Region 2, is a regional state in northeastern",
  ),
  PlaceDescription(
    placeName: 'Lalibela',
    imageUrl: 'assets/images/lalibela/lalibela_1.jpg',
    description:
        "Lalibela (Amharic: ላሊበላ) is a town in Lasta district of North Wollo Zone in Amhara Region, Ethiopia. It is famous for rock-cut monolithic churches. The whole of Lalibela is a large and important site for the antiquity, medieval and post-medieval civilization of Ethiopia.",
    shortDescription: "Lalibela (Amharic: ላሊበላ) is a town in Lasta .",
  ),
  PlaceDescription(
    placeName: 'Harar',
    imageUrl: 'assets/images/harar/harar_1.jpg',
    description:
        "Harar is a city in eastern Ethiopia. It’s surrounded by a centuries-old defensive wall that has several large gates, including Duke's Gate. The city is known for its mazelike alleys and traditional houses decorated inside with flat hanging baskets. A replica house features at the Harar Community Centre Museum. A holy Islamic city, Harar has many mosques, including the Grand Jami Mosque with its tall white minarets.",
    shortDescription: "Harar is a city in eastern Ethiopia.",
  ),
  PlaceDescription(
    placeName: 'Fasiledes',
    imageUrl: 'assets/images/fasiledes/fasil_1.jpg',
    description:
        "Fasilides was proclaimed emperor in 1630 during a revolt led by Sarsa Krestos, but did not reach the throne until his father abdicated in 1632. Once he became emperor, Fasilides immediately restored the official status of the traditional Ethiopian Orthodox Church. ",
    shortDescription: "Fasilides was proclaimed emperor in 1630",
  ),
];
