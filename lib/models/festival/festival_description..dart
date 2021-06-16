import 'package:ethiopia/models/place/activity_model.dart';

class FestivalDescription {
  String imageUrl;
  String festivalName;
  String date;
  String festivaldescription;
  String shortDescription;
  List<Activity> festivalActivityActivity;
  FestivalDescription(
      {this.imageUrl,
      this.festivalName,
      this.date,
      this.festivaldescription,
      this.shortDescription,
      this.festivalActivityActivity});
}

List<FestivalDescription> festivalDescription = [
  FestivalDescription(
    festivalName: 'Timeket ',
    imageUrl: 'assets/images/timket/timket_1.jpg',
    date: 'Jan 19',
    festivaldescription:
        "Timket (Ge'ez: ጥምቀት) is an Ethiopian Orthodox Tewahedo Church and Eritrea Orthodox Tewahedo Church celebration of Epiphany. It is celebrated on January 19th (or 20th in a leap year), corresponding to the 11th day of Terr in the Ge'ez calendar. Timkat celebrates the baptism of Jesus in the River Jordan",
    shortDescription:
        "Timket (Ge'ez: ጥምቀት) is an Ethiopian Orthodox Tewahedo Church.",
  ),
  FestivalDescription(
    festivalName: 'New Year(Enkutatash)',
    imageUrl: 'assets/images/new year/new_year_1.jpg',
    festivaldescription:
        "Enkutatash is an annual holiday observed in September, the perennial Leucanthemum vulgare flower (a yellow pigment) is identified with this holiday due to growing densely in its fully maturation in September. Relatives especially family members gathered and eat meals prepared by chicken's meat natively called doro wat. ",
    shortDescription: "Enkutatash is an annual holiday observed in September, ",
  ),
  FestivalDescription(
    festivalName: 'Mesekel ',
    imageUrl: 'assets/images/mesekel/mesekel_1.png',
    festivaldescription:
        "Meskel (Ge'ez: መስቀል) is a Christian holiday in the Ethiopian Orthodox and Eritrean Orthodox churches that commemorates the discovery of the True Cross by the Roman Empress Helena (Saint Helena) in the fourth century. ... Many Ethiopians who live in cities return to their villages to celebrate the national event..",
    shortDescription: "Meskel (Ge'ez: መስቀል) is a Christian holiday",
  ),
];
