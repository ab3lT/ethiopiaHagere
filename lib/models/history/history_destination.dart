import 'package:ethiopia/models/place/activity_model.dart';

class HistoryeDescription {
  String imageUrl;
  String peresonName;
  String date;
  String description;
  String shortDescription;
  List<Activity> historyActivity;
  HistoryeDescription(
      {this.imageUrl,
      this.peresonName,
      this.date,
      this.description,
      this.shortDescription,
      this.historyActivity});
}

List<HistoryeDescription> historyDestinations = [
  HistoryeDescription(
    peresonName: 'Tewodros II',
    imageUrl: 'assets/images/tewodros/Tewodros_1.jpg',
    date: '1855-1868',
    description:
        "Tewodros II (Ge'ez: ቴዎድሮስ, baptized as Sahle Dingil; 14 January 1818 – 14 April 1868) was Emperor of Ethiopia from 1855 until his death in 1868. \n Tewodros II's origins were in the Era of the Princes, but his ambitions were not those of the regional nobility. He sought to re-establish a cohesive Ethiopian state and to reform its administration and church. He sought to restore Solomonic hegemony, and he considered himself the Elect of God.",
    shortDescription: "Tewodros II Ge'ez: ቴዎድሮስ was Emperor of Ethiopia.",
  ),
  HistoryeDescription(
    peresonName: 'Menelik II',
    imageUrl: 'assets/images/menilik/menilik_1.jpg',
    description:
        "Emperor Menelik II was one of Ethiopia’s greatest leaders, ruling as King and Emperor of Ethiopia from 1889 to 1913. He was born Sahle Miriam on August 17, 1884, in Ankober, Shewa, Ethiopia. His mother, Woizero Ejigayehu Lemma Adyamo, was a palace servant, and his father was Prince Haile-Melekot, Son of King Sahle Sillasse. ",
    shortDescription: "Menelik II (Ge'ez: ዳግማዊ ምኒልክ dagmawi mənilək)",
  ),
  HistoryeDescription(
    peresonName: 'Haile Selassie I',
    imageUrl: 'assets/images/hileSelase/haileSelase_1.jpg',
    description: "was Emperor of Ethiopia from 1930 to 1974.",
    shortDescription: "Haile Selassie I (Ge'ez: ቀዳማዊ ኀይለ ሥላሴ ) ",
  ),
  HistoryeDescription(
    peresonName: 'Mengistu Haile Mariam',
    imageUrl: 'assets/images/mengestuHileMariyam/mengestuHileMariam_1.jpg',
    description:
        "Gondar, or Gonder, is a city in northern Ethiopia. It's known for the walled Fasil Ghebbi fortress and palace compound, once the seat of Ethiopian emperors. Dominating it is the immense 17th-century castle of Emperor Fasilides, which combines Portuguese, Indian and local architectural styles. Outside the complex is Debre Berhan Selassie church, with an interior of elaborate murals, including a ceiling of faces.",
    shortDescription: "Gondar, or Gonder, is a city in northern Ethiopia.",
  ),
  HistoryeDescription(
    peresonName: 'Meles Zenawi ',
    imageUrl: 'assets/images/people/meles_1.jpg',
    description:
        "Meles Zenawi Asres was an Ethiopian soldier and politician who ruled Ethiopia as a President from 1991 to 1995 and as Prime Minister from 1995 until his death in 2012. He was considered the founder of the federal state of modern Ethiopia.",
    shortDescription:
        " was an Ethiopian soldier and politician who ruled Ethiopia ",
  ),
  HistoryeDescription(
    peresonName: 'Hailemariam Desalegn',
    imageUrl: 'assets/images/people/HD_1.jpg',
    description:
        "Hailemariam Desalegn Boshe is an Ethiopian politician who served as Prime Minister of Ethiopia from 2012 to 2018. He also previously served as Deputy Prime Minister and Minister of Foreign Affairs under Prime Minister Meles Zenawi from 2010 to 2012. ",
    shortDescription:
        "Ethiopian politician who served as Prime Minister of Ethiopia from 2012 to 2018.",
  ),
  HistoryeDescription(
    peresonName: 'Abiy Ahmed',
    imageUrl: 'assets/images/people/AD_1.jpg',
    description:
        "Abiy Ahmed Ali is an Ethiopian politician serving as 4th Prime Minister of the Federal Democratic Republic of Ethiopia since 2 April 2018.",
    shortDescription:
        " Ethiopian politician serving as 4th Prime Minister of the Federal Democratic Republic of Ethiopia",
  ),
];
