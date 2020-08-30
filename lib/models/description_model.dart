
class DescriptionUnit {
  final String title;
  final String paragraph;
  final String image;

  DescriptionUnit(this.paragraph, this.image, this.title);
}


class ActivityDescription {
  final String section;
  final String imageHeader;
  final List<DescriptionUnit> descriptions;

  ActivityDescription(this.section, this.imageHeader, this.descriptions);

 static ActivityDescription getDescription(String category){
   if(category == 'termalisme') { return ActivityDescription.termalismDescription;}
   if(category == 'falles') { return ActivityDescription.fallesDescription;}
   if(category == 'parc') { return ActivityDescription.parcDescription;}
   if(category == 'esqui') { return ActivityDescription.esquiDescription;}


   return ActivityDescription.romanicDescription;
 }


  static ActivityDescription termalismDescription =
  ActivityDescription('Termalisme', 'termalisme1.jpg', [
    DescriptionUnit(
        "El Balneari de Caldes de Boí és al Llibre Guiness dels Records per ser el balneari amb més varietat d'aigües. Té 37 fonts d’aigües mineromedicinals de diverses composicions i temperatures i que poden ser utilitzades amb diferents finalitats terapèutiques.",
        'balneari.jpg',
        ""),
    DescriptionUnit(
        "A 1.500 metres d'alçada, compta amb 37 brolladors d’aigües mineromedicionals de més de 16.000 anys d’història (el seu efecte terapèutic es remonta a l'època romana). Aquests brolladors es troben en l’extensa zona de jardins del balneari (24 ha) i des de l’Hotel Manantial s’ofereix una ruta a peu per descobrir-los.",
        'termalisme2.jpg',
        "EL BALNEARI"),
    DescriptionUnit(
        "Les aigües que s’extreuen d’aquestes fonts, amb temperatures que oscil·len entre els 4 i els 56 ºC, permeten realitzar més de 2.000 tècniques diàries amb finalitats terapèutiques. N’hi ha de clorurades, sulfurades, sulfatades i bicarbonatades (el sodi predomina en les aigües més calentes i el calci en les més fredes).Les aigües que s’extreuen d’aquestes fonts, amb temperatures que oscil·len entre els 4 i els 56 ºC, permeten realitzar més de 2.000 tècniques diàries amb finalitats terapèutiques. N’hi ha de clorurades, sulfurades, sulfatades i bicarbonatades (el sodi predomina en les aigües més calentes i el calci en les més fredes).",
        'termalisme3.jpg',
        "AIGÜES TERMALS"),
    DescriptionUnit(
        "El fet de disposar d’aquesta varietat d’aigües, raó per la qual el balneari apareix al llibre Guinness dels Rècords, permet oferir una àmplia carta de tractaments, tant per a nens com per a adults, que donen resposta a necessitats com: cures per a malalties reumatològiques, respiratòries, neurològiques, dermatològiques, de ronyó i vies urinàries, recondicionament cardiovascular, aprimament, aparell digestiu, anti-estrès i recondicionament físic post tractament oncològic.",
        'termalisme4.jpg',
        "TRACTAMENTS")
  ]);

  static ActivityDescription romanicDescription =
  ActivityDescription('El Romànic', 'romanic2.png', [
    DescriptionUnit(
        'El conjunt romànic de la Vall de Boí està format per les esglésies de Sant Climent i Santa Maria de Taüll, Sant Joan de Boí, Santa Eulàlia d’Erill la Vall, Sant Feliu de Barruera, la Nativitat de Durro, Santa Maria de Cardet, l’Assumpció de Cóll i l’ermita de Sant Quirc de Durro.',
        'romanic.jpg',
        ""),
    DescriptionUnit(
        'Una de les seves característiques principals és la unitat d’estil arquitectònic. Són construccions dutes a terme durant els segles XI i XII seguint els models provinents del nord d’Itàlia, el romànic llombard, que es caracteritza per la funcionalitat de les seves construccions, l’acurat treball de la pedra, els esvelts campanars de torre, i la decoració exterior d’arquets cecs i bandes llombardes.',
        'falles.jpg',
        ""),
    DescriptionUnit(
        'Les esglésies romàniques de la Vall de Boí són el reflex artístic d’una societat estructurada entorn de les jerarquies eclesiàstiques i senyorials, personificades en aquest cas en els senyors d’Erill i el bisbat de Roda d’Isàbena, promotors dels temples de la vall. Dins d’aquesta societat medieval, l’església complia, no només una funció religiosa, sinó que també tenia un important paper social, com a lloc de reunió i refugi del poble. En el cas de la Vall de Boí, aquesta funció social dels temples s’evidencia en la utilització dels seus esvelts campanars de torre com a elements de comunicació i vigilància.',
        'romanic.jpg',
        "")
  ]);

  static ActivityDescription fallesDescription =
  ActivityDescription('Les Falles', 'falles.jpg', [
    DescriptionUnit(
        'Al món rural les festes populars estan íntimament lligada als cicles agraris i solars. Arrencar el foc, símbol del sol, de la muntanya i baixar-lo cap al poble serveix per purificar els camps i els boscos, purificar la població i preservar-la dels mals esperits. La festa de les falles, que se celebra en seixanta-tres pobles dels Pirineus i Pre-Pirineus (34 de França, 17 de Catalunya, 9 d’Aragó i 3 d’Andorra) ha estat declarada Patrimoni Immaterial de la Humanitat per la UNESCO.',
        'falles.jpg',
        ""),
    DescriptionUnit(
        "Diuen que les tradicions només es mantenen vives si les celebren any rere any la mateixa gent del territori com un fet propi i no simplement com una herència del passat. La festa de les Falles ha estat des de temps remots una tradició arrelada als pobles de la Vall de Boí. \n Cada any, anteriorment amb l’inici del solstici d’estiu, actualment coincidint amb la festa major, els pobles de la vall corren les falles. \n Una festa relacionada amb el culte al sol, donant les gràcies als déus per les collites rebudes i espantant els mals esperits.",
        'falles.jpg',
        "LA TRADICIÓ"),
    DescriptionUnit(
        'Les Falles són una torxa feta de fusta resinosa d’uns dos metres de llargària, que es fa amb trossos de teia de pi enganxats a un de pal freixe amb filferros i puntes. També hi ha una varietat de falles realitzades en una sola peça de pi treballat per tal que cremi amb força, s’anomenen Rantiners.',
        'falles.jpg',
        "LA FALLA"),
    DescriptionUnit(
        "La festa comença uns dies abans amb l’elaboració de les falles i rantiners, en la que els nois i noies del poble treballen per preparar-los i deixar-los eixugar una mica. \n El dia de les Falles tot comença al faro, un indret elevat de la muntanya normalment amb molt bona vista sobre el poble on hi ha plantat un pi i altres arbres per aconseguir una foguera. Des d’aquest punt és d’on s’encenen les falles abans de començar la baixada. \n Els fallaires, després de sopar i quan és ben fosc, encenen el faro, i amb ell les seves falles, fan el descens orgullosos de portar el foc cap al poble amb un dels nois al davant, fins arribar a la plaça, on la gent els rep amb alegria, música i festa, es fa una gran foguera amb les restes de falles i rantiners que han resistit la baixada i es comença la festa que pot durar tota la nit.",
        'falles.jpg',
        "LA FESTA"),
  ]);

  static ActivityDescription parcDescription =
  ActivityDescription('Aigüestortes', 'Aiguestortes.jpg', [
    DescriptionUnit(
        "Cims que superen els tres mil metres d’alçada, rius, barrancs, cascades i molleres que ens fan sentir, veritablement, al país de l’aigua. Prop de 300 estanys de formes i colors diversos i una gran diversitat d’espècies animals i vegetals, que lluiten per sobreviure en un medi físic rigorós, dónen vida a aquest espai natural protegit únic del sud d’Europa.",
        'falles.jpg',
        "L'únic Parc Nacional de Catalunya"),
  ]);


  static ActivityDescription esquiDescription =
  ActivityDescription('Les Pistes', 'esqui.jpeg', [
    DescriptionUnit(
        "Tant si ets expert esquiador com si ets debutant i vols venir a passar el dia amb família trobaràs el que busques. És l’estació més alta de Catalunya (cota mínima de 2020m i màxima de 2751m) i està orientada al nord, el que dóna una neu d'excel.lent qualitat. A més, és poc massificada i amb una zona baixa ideal per als nen",
        'esqui.jpeg',
        ""),
  ]);




}
