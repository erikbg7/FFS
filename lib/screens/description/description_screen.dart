import 'package:flutter/material.dart';

import 'components/sliver_appbar.dart';
import 'components/sliver_list.dart';

class DescriptionUnit {
  final String paragraph;
  final String image;

  DescriptionUnit(this.paragraph, this.image);
}

class ActivityDescription {
  final String imageHeader;
  final List<DescriptionUnit> descriptions;

  ActivityDescription(this.imageHeader, this.descriptions);

  static DescriptionUnit unit1 = DescriptionUnit(
      'El conjunt romànic de la Vall de Boí està format per les esglésies de Sant Climent i Santa Maria de Taüll, Sant Joan de Boí, Santa Eulàlia d’Erill la Vall, Sant Feliu de Barruera, la Nativitat de Durro, Santa Maria de Cardet, l’Assumpció de Cóll i l’ermita de Sant Quirc de Durro.',
      'romanic.jpg');

  static DescriptionUnit unit2 = DescriptionUnit(
      'Una de les seves característiques principals és la unitat d’estil arquitectònic. Són construccions dutes a terme durant els segles XI i XII seguint els models provinents del nord d’Itàlia, el romànic llombard, que es caracteritza per la funcionalitat de les seves construccions, l’acurat treball de la pedra, els esvelts campanars de torre, i la decoració exterior d’arquets cecs i bandes llombardes.',
      'falles.jpg');

  static DescriptionUnit unit3 = DescriptionUnit(
      'Les esglésies romàniques de la Vall de Boí són el reflex artístic d’una societat estructurada entorn de les jerarquies eclesiàstiques i senyorials, personificades en aquest cas en els senyors d’Erill i el bisbat de Roda d’Isàbena, promotors dels temples de la vall. Dins d’aquesta societat medieval, l’església complia, no només una funció religiosa, sinó que també tenia un important paper social, com a lloc de reunió i refugi del poble. En el cas de la Vall de Boí, aquesta funció social dels temples s’evidencia en la utilització dels seus esvelts campanars de torre com a elements de comunicació i vigilància.',
      'romanic.jpg');

  static ActivityDescription romanicDescription =
      ActivityDescription('romanic2.png', [unit1, unit2, unit3]);
}

class DescriptionSliver extends StatefulWidget {
  const DescriptionSliver({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DescriptionSliverState();
}

class _DescriptionSliverState extends State<DescriptionSliver> {
  @override
  Widget build(BuildContext context) {
    final ActivityDescription descr = ActivityDescription.romanicDescription;

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(slivers: <Widget>[
          buildSliverAppBar(context, descr),
          buildSliverList(descr),
        ]),
      ),
    );
  }
}
