import 'package:flutter/material.dart';

String imagePemulasaran =
    'https://firebasestorage.googleapis.com/v0/b/covid-f04ee.appspot.com/o/rfOQIfXKJRTP4u4gYfmLeNhEXp03%2Fpemulasaran%20.jpeg?alt=media&token=04fa9be4-487e-45e8-85ff-eb6907e7b3e8';
String imagejenazah =
    'https://firebasestorage.googleapis.com/v0/b/covid-f04ee.appspot.com/o/rfOQIfXKJRTP4u4gYfmLeNhEXp03%2Filustrasi-mayat-karikatur-11.jpg?alt=media&token=f807f488-f714-4ff8-b5dd-287910a693a3';
String imagePerawatanJenazah =
    'https://firebasestorage.googleapis.com/v0/b/covid-f04ee.appspot.com/o/rfOQIfXKJRTP4u4gYfmLeNhEXp03%2Fperawatan%20jenazah.jpeg?alt=media&token=38c7546b-36a9-4ad3-8293-7b8c4e7a9982';
String imageSakit =
    'https://firebasestorage.googleapis.com/v0/b/covid-f04ee.appspot.com/o/rfOQIfXKJRTP4u4gYfmLeNhEXp03%2Fsakit.jpg?alt=media&token=209ec8b6-854a-4d0d-812d-5b0d880ed3ff';
String imageSakaratul =
    'https://firebasestorage.googleapis.com/v0/b/covid-f04ee.appspot.com/o/rfOQIfXKJRTP4u4gYfmLeNhEXp03%2Fsakaratul%20maut.jpeg?alt=media&token=319b6b55-aa1e-49cc-a788-73f14cfa9dd8';
String imageMeninggal =
    'https://firebasestorage.googleapis.com/v0/b/covid-f04ee.appspot.com/o/rfOQIfXKJRTP4u4gYfmLeNhEXp03%2Fmeninggal.jpg?alt=media&token=39de42cd-c9d0-4108-95c1-3a86eefdbb76';
String imageAturanPerawatan =
    'https://firebasestorage.googleapis.com/v0/b/covid-f04ee.appspot.com/o/rfOQIfXKJRTP4u4gYfmLeNhEXp03%2Faturan%20rinci%20perawatan%20jenazah.png?alt=media&token=0e3526c7-4234-4655-afab-ac6175dd85cb';
String imageMemandikan =
    'https://firebasestorage.googleapis.com/v0/b/covid-f04ee.appspot.com/o/rfOQIfXKJRTP4u4gYfmLeNhEXp03%2Fmemandikan.jpg?alt=media&token=09bf89fb-acb6-4020-bbf2-977310f8ad8b';
String imageMengkafani =
    'https://firebasestorage.googleapis.com/v0/b/covid-f04ee.appspot.com/o/rfOQIfXKJRTP4u4gYfmLeNhEXp03%2Fmengakafani.jpg?alt=media&token=4dfc29f8-bead-42f9-90cd-a9a54165953a';
String imageShalat =
    'https://firebasestorage.googleapis.com/v0/b/covid-f04ee.appspot.com/o/rfOQIfXKJRTP4u4gYfmLeNhEXp03%2Fshalat%20jenazah.png?alt=media&token=6a27b6a7-d462-4cba-8b60-65be32912785';
String imageMengubur =
    'https://firebasestorage.googleapis.com/v0/b/covid-f04ee.appspot.com/o/rfOQIfXKJRTP4u4gYfmLeNhEXp03%2Fmengubur.png?alt=media&token=26f477e7-7564-4129-b498-952b579f3703';
String imagePandemi =
    'https://firebasestorage.googleapis.com/v0/b/covid-f04ee.appspot.com/o/rfOQIfXKJRTP4u4gYfmLeNhEXp03%2Fpandemi.jpg?alt=media&token=b563216a-6b0c-4596-b798-92059c842a38';
String imagebg =
    'https://firebasestorage.googleapis.com/v0/b/covid-f04ee.appspot.com/o/rfOQIfXKJRTP4u4gYfmLeNhEXp03%2F603f520209b67.jpg?alt=media&token=61f49463-b302-4dd3-82b4-bc97182b74f6';

String imageVideo =
    'https://firebasestorage.googleapis.com/v0/b/covid-f04ee.appspot.com/o/rfOQIfXKJRTP4u4gYfmLeNhEXp03%2Fpngkey.com-videos-png-1166768.png?alt=media&token=d8ccd0cb-3c31-45eb-af05-5c5e8cbbeb9e';
String imagemateri =
    'https://firebasestorage.googleapis.com/v0/b/covid-f04ee.appspot.com/o/rfOQIfXKJRTP4u4gYfmLeNhEXp03%2Ficon-materi-png-9.png?alt=media&token=701ae3a2-c2d8-45c6-9cd5-2eb0bb2a68f1';
String imagequiz =
    'https://firebasestorage.googleapis.com/v0/b/covid-f04ee.appspot.com/o/rfOQIfXKJRTP4u4gYfmLeNhEXp03%2Fquiz2_640.webp?alt=media&token=cb1277ac-d48a-49df-b684-e8e4bbef55d2';
String imageprofile =
    'https://firebasestorage.googleapis.com/v0/b/covid-f04ee.appspot.com/o/rfOQIfXKJRTP4u4gYfmLeNhEXp03%2FCircle-icons-profile.svg.png?alt=media&token=57a3495d-905a-45f8-ba8b-3cd28c8b8bb7';
String imageabout =
    'https://firebasestorage.googleapis.com/v0/b/covid-f04ee.appspot.com/o/rfOQIfXKJRTP4u4gYfmLeNhEXp03%2Finfo.png?alt=media&token=bcd5024e-a4df-4a70-b219-5ac6f053a34f';

Widget BG = Container(
  color: b,
  height: double.infinity,
  child: Image.network(
    imagebg,
    fit: BoxFit.fill,
  ),
);

Color b = Colors.black54;

double d = double.infinity;

final sb = SizedBox(height: 45);
final sb1 = SizedBox(height: 10);
final sb2 = SizedBox(height: 5);
Widget C = Container(
  color: b,
  height: d,
);

final style = TextStyle(
  fontSize: 20,
  color: Colors.white,
);

final texAlign = TextAlign.justify;
final styleB = TextStyle(
  fontSize: 20,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);

final p = EdgeInsets.only(left: 18.0);
