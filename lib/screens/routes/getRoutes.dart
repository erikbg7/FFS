import 'package:first_flutter_app/models/routes_model.dart';
import 'package:first_flutter_app/network/network.dart';

const routesArray = [
  {
    "id": 0,
    "title": "Barruera - Boí (Camí de l'aigua)",
    "category": "Caminada",
    "duration": "1,40h",
    "distance": "3,90km",
    "elevation": "180m",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/la_foto_2.jpg?itok=_cF79F38"
  },
  {
    "id": 1,
    "title": "Barruera - Cardet",
    "category": "Caminada",
    "duration": "0,50h",
    "distance": "2,20km",
    "elevation": "90m",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/_mg_2101baixa.jpg?itok=iLRibkto"
  },
  {
    "id": 2,
    "title": "Barruera - Durro",
    "category": "Caminada",
    "duration": "1,30h",
    "distance": "2,40km",
    "elevation": "275m",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/037durro-barruera.jpg?itok=JgUFL8oI"
  },
  {
    "id": 3,
    "title": "Barruera - El Pont de Saraís (Camí de l'aigua)",
    "category": "Caminada",
    "duration": "1,30h",
    "distance": "4,05km",
    "elevation": "-100m",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/01camibarruera.jpg?itok=gO9n18PU"
  },
  {
    "id": 4,
    "title": "Barruera - Erill la Vall",
    "category": "Caminada",
    "duration": "1,45h",
    "distance": "4,10km",
    "elevation": "115m",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/la_foto_16.jpg?itok=w6tVnjJ2"
  },
  {
    "id": 5,
    "title": "Boí - Caldes de Boí",
    "category": "Caminada",
    "duration": "2,15h",
    "distance": "5,20km",
    "elevation": "160m",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/barbero_parc_1.jpg?itok=cAuZGYbi"
  },
  {
    "id": 6,
    "title": "Boí - Durro (Camí del Pago)",
    "category": "Caminada",
    "duration": "1,30h",
    "distance": "3,40km",
    "elevation": "120m",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/mes_iphone_1340.jpg?itok=H0DSkZ3c"
  },
  {
    "id": 7,
    "title": "Boí - Erill la Vall",
    "category": "Passejada",
    "duration": "0,25h",
    "distance": "0,95km",
    "elevation": "40m",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/dscn4522.jpg?itok=ve6syFfn"
  },
  {
    "id": 8,
    "title": "Boí - Taüll",
    "category": "Caminada",
    "duration": "0,40h",
    "distance": "1,10km",
    "elevation": "110m",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/eques_taull_vertical.jpg?itok=oXve1Xyf"
  },
  {
    "id": 9,
    "title": "Boí - Taüll",
    "category": "Centre Trail-BTT",
    "duration": "3,00h",
    "distance": "19,40km",
    "elevation": "810m",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/rlm150522_236.jpg?itok=Z44Ysnds"
  },
  {
    "id": 10,
    "title": "Boí-Taüll",
    "category": "Centre Trail-BTT",
    "duration": "19,40km",
    "distance": "",
    "elevation": "",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/rlm150521_205bxc.jpg?itok=S3kfumn9"
  },
  {
    "id": 11,
    "title": "BTT Els Planos",
    "category": "Centre Trail-BTT",
    "duration": "8,00km",
    "distance": "",
    "elevation": "",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/rlm150521_498.jpg?itok=RreBN6Do"
  },
  {
    "id": 12,
    "title": "Camí de la Santeta (Taüll)",
    "category": "Passejada",
    "duration": "0,15h",
    "distance": "1,20km",
    "elevation": "90m",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/pan_senderistas_1.jpg?itok=BMlT466p"
  },
  {
    "id": 13,
    "title": "Camí de les Cuirilles (Taüll)",
    "category": "Passejada",
    "duration": "0,30h",
    "distance": "1,90km",
    "elevation": "50m",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/vista_taull_desde_cuirilles_baixa.jpg?itok=MI8HXU-b"
  },
  {
    "id": 14,
    "title": "Camí de les Roquetes (Boí)",
    "category": "Passejada",
    "duration": "0,20h",
    "distance": "1,20km",
    "elevation": "-45m",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/039.jpg?itok=n3rCS-0x"
  },
  {
    "id": 15,
    "title": "Camí de Llanceros",
    "category": "Caminada",
    "duration": "0,45h",
    "distance": "1,60km",
    "elevation": "-220m",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/taull_i_laut.jpg?itok=5DPiRJnw"
  },
  {
    "id": 16,
    "title": "Camí dels Enamorats",
    "category": "Passejada",
    "duration": "0,25h",
    "distance": "0,60km",
    "elevation": "70m",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/2012-10-22_10.53.34.jpg?itok=b8KKkD6t"
  },
  {
    "id": 17,
    "title": "Cara Amón",
    "category": "Excursió",
    "duration": "4,40km",
    "distance": "",
    "elevation": "",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/6699d1e2-eeec-4953-a640-38f48f44431f.jpg?itok=EgNEyZe9"
  },
  {
    "id": 18,
    "title": "Cara Amón",
    "category": "Centre Trail-Trail",
    "duration": "2,00h",
    "distance": "4,40km",
    "elevation": "1.360m",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/caraamon-3.jpg?itok=l5BpCtfu"
  },
  {
    "id": 19,
    "title": "De Barruera a les Roies de Cardet (Cara Amon)",
    "category": "Excursió",
    "duration": "2,20h",
    "distance": "4,80km",
    "elevation": "1.350m",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/barruera_-_caraamon.jpg?itok=hzOPk6oM"
  },
  {
    "id": 20,
    "title": "Durro - Sant Quirc de Durro",
    "category": "Passejada",
    "duration": "0,20h",
    "distance": "1,80km",
    "elevation": "114m",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/211923.jpg?itok=Xnv5YKOt"
  },
  {
    "id": 21,
    "title": "Durro - Saraís - El Pont de Saraís",
    "category": "Excursió",
    "duration": "3,00h",
    "distance": "8,00km",
    "elevation": "-255m",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/084coll.jpg?itok=sY-f8y1v"
  },
  {
    "id": 22,
    "title": "El Pont de Saraís - Cóll",
    "category": "Caminada",
    "duration": "0,30h",
    "distance": "1,05km",
    "elevation": "170m",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/vella_palanca.jpg?itok=vcASx9Wa"
  },
  {
    "id": 23,
    "title": "Els Planos",
    "category": "Centre Trail-BTT",
    "duration": "8,00km",
    "distance": "",
    "elevation": "",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/rlm150521_393bxc.jpg?itok=HfsDLeEA"
  },
  {
    "id": 24,
    "title": "Erill la Vall - Caldes de Boí",
    "category": "Caminada",
    "duration": "2,00h",
    "distance": "4,75km",
    "elevation": "200m",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/_dsc0312.jpg?itok=mwRy3qCb"
  },
  {
    "id": 25,
    "title": "Itinerari de Toirigo a l' Embassament de Cavallers",
    "category": "Excursió",
    "duration": "1,00h",
    "distance": "3,30km",
    "elevation": "320m",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/cavallers3_sergi_natura.jpg?itok=wxlwhONk"
  },
  {
    "id": 26,
    "title":
        "Itinerari de l'embassament de Cavallers al refugi Ventosa i Calvell (Ruta de la Marmota)",
    "category": "Excursió",
    "duration": "2,15h",
    "distance": "4,40km",
    "elevation": "350m",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/20090711_003065_sergi_senderisme.jpg?itok=4aDosUKH"
  },
  {
    "id": 27,
    "title":
        "Itinerari de la palanca de la Molina al planell d'Aigüestortes (Ruta de la Llúdriga)",
    "category": "Excursió",
    "duration": "2,00h",
    "distance": "6,30km",
    "elevation": "430m",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/_mg_6419.jpg?itok=8jR_hh2Z"
  },
  {
    "id": 28,
    "title": "Itinerari de Toirigo als estanys Gémena",
    "category": "Excursió",
    "duration": "2,50h",
    "distance": "4,40km",
    "elevation": "810m",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/20090813_005173_-br-_.jpg?itok=4EuFXN71"
  },
  {
    "id": 29,
    "title": "Itinerari del planell d'Aigüestortes a l'estany Llong",
    "category": "Excursió",
    "duration": "1,30h",
    "distance": "4,20km",
    "elevation": "160m",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/barcero_parc2_5.jpg?itok=ZrFmc1vb"
  },
  {
    "id": 30,
    "title": "Itinerari del Pont de la Ribera a Estanys del Pessó",
    "category": "Excursió",
    "duration": "3,00h",
    "distance": "4,20km",
    "elevation": "800m",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/des_del_pa_de_sucre.jpg?itok=TP4mjW7q"
  },
  {
    "id": 31,
    "title": "Itinerari pel planell d'Aigüestortes",
    "category": "Passejada",
    "duration": "1,00h",
    "distance": "1,50km",
    "elevation": "0m",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/barbero_parc_9.jpg?itok=Vu5H72uQ"
  },
  {
    "id": 32,
    "title": "Joc de la Pilota",
    "category": "Centre Trail-BTT",
    "duration": "19,04km",
    "distance": "",
    "elevation": "",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/rlm150521_258-copia.jpg?itok=B017-UYy"
  },
  {
    "id": 33,
    "title": "Joc de la Pilota",
    "category": "Centre Trail-BTT",
    "duration": "3,00h",
    "distance": "19,04km",
    "elevation": "",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/rlm150521_191.jpg?itok=MSBgbjr9"
  },
  {
    "id": 34,
    "title": "La Cultia",
    "category": "Centre Trail-BTT",
    "duration": "6,04km",
    "distance": "",
    "elevation": "",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/rlm150521_277bxc.jpg?itok=rwoY1M0_"
  },
  {
    "id": 35,
    "title": "La Cultia",
    "category": "Centre Trail-BTT",
    "duration": "2,00h",
    "distance": "",
    "elevation": "",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/img_0945.jpg?itok=5AOsDaBT"
  },
  {
    "id": 36,
    "title": "Pla de l'Ermita - Sant Quirc de Taüll",
    "category": "Passejada",
    "duration": "0,15h",
    "distance": "0,50km",
    "elevation": "0m",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/romanico.jpg?itok=HYltrxVl"
  },
  {
    "id": 37,
    "title": "Pujada a Cavallers",
    "category": "Centre Trail-Cicloturisme",
    "duration": "11,50km",
    "distance": "617m",
    "elevation": "",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/rlm150522_010.jpg?itok=avzjSdEH"
  },
  {
    "id": 38,
    "title": "Pujada a Cavallers (1.700 m)",
    "category": "Centre Trail-Cicloturisme",
    "duration": "11,50km",
    "distance": "",
    "elevation": "",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/rlm150522_022.jpg?itok=PMF_L273"
  },
  {
    "id": 39,
    "title": "Pujada a Durro",
    "category": "Centre Trail-Cicloturisme",
    "duration": "3,00km",
    "distance": "281m",
    "elevation": "",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/rlm150522_108.jpg?itok=oJHM5X38"
  },
  {
    "id": 40,
    "title": "Pujada a Durro (1.375m)",
    "category": "Centre Trail-Cicloturisme",
    "duration": "3,00km",
    "distance": "",
    "elevation": "",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/rlm150522_025.jpg?itok=JSEWKqJE"
  },
  {
    "id": 41,
    "title": "Pujada a l'estació d'esquí de Boí Taüll",
    "category": "Centre Trail-Cicloturisme",
    "duration": "18,00km",
    "distance": "967m",
    "elevation": "",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/rlm150522_156.jpg?itok=ilfikxOZ"
  },
  {
    "id": 42,
    "title": "Pujada a l’estació d’esquí de Boi-Taüll (2.045m)",
    "category": "Centre Trail-Cicloturisme",
    "duration": "18,00km",
    "distance": "",
    "elevation": "",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/rlm150522_339.jpg?itok=U8lf56E0"
  },
  {
    "id": 43,
    "title": "Ruta de la Fauna",
    "category": "Centre Trail-BTT",
    "duration": "8,20km",
    "distance": "",
    "elevation": "",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/rlm150521_218bxc.jpg?itok=qiaKVM75"
  },
  {
    "id": 44,
    "title": "Ruta de la fauna",
    "category": "Centre Trail-BTT",
    "duration": "2,00h",
    "distance": "8,20km",
    "elevation": "230m",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/rlm150521_218.jpg?itok=3FklGK8f"
  },
  {
    "id": 45,
    "title": "Ruta de la fauna de Durro",
    "category": "Excursió",
    "duration": "2,30h",
    "distance": "7,50km",
    "elevation": "200m",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/211961.jpg?itok=IY2jx8Fh"
  },
  {
    "id": 46,
    "title": "Ruta del Romànic",
    "category": "Centre Trail-Trail",
    "duration": "28,10km",
    "distance": "",
    "elevation": "",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/rlm150521_028.jpg?itok=r6iOPBn6"
  },
  {
    "id": 47,
    "title": "Ruta del Romànic",
    "category": "Centre Trail-Trail",
    "duration": "4,00h",
    "distance": "28,10km",
    "elevation": "1.260m",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/img_2606.jpg?itok=Z-74XT1s"
  },
  {
    "id": 48,
    "title": "Ruta dels 4 pobles",
    "category": "Centre Trail-Trail",
    "duration": "11,00km",
    "distance": "",
    "elevation": "",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/rlm150521_111bxc.jpg?itok=tgiNDUkv"
  },
  {
    "id": 49,
    "title": "Ruta dels 4 pobles",
    "category": "Centre Trail-Trail",
    "duration": "2,00h",
    "distance": "11,00km",
    "elevation": "470m",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/rlm150521_136_0.jpg?itok=MG0qXTQn"
  },
  {
    "id": 50,
    "title": "Salencar de Barruera",
    "category": "Passejada",
    "duration": "1,00h",
    "distance": "1,50km",
    "elevation": "0m",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/barruera.jpg?itok=LUAsteSB"
  },
  {
    "id": 51,
    "title": "Taüll - Pla de l'Ermita",
    "category": "Passejada",
    "duration": "0,20h",
    "distance": "2,10km",
    "elevation": "128m",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/_mg_3694.jpg?itok=xjj-tPQb"
  },
  {
    "id": 52,
    "title": "Volta a la Feixa",
    "category": "Centre Trail-Trail",
    "duration": "15,20km",
    "distance": "",
    "elevation": "",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/rlm150521_124bxc.jpg?itok=tpIdGOjw"
  },
  {
    "id": 53,
    "title": "Volta a la Feixa",
    "category": "Centre Trail-Trail",
    "duration": "2,00h",
    "distance": "800m",
    "elevation": "",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/running.jpg?itok=jqYdOv7Y"
  },
  {
    "id": 54,
    "title": "Volta al Ginebrell",
    "category": "Centre Trail-Trail",
    "duration": "11,50km",
    "distance": "",
    "elevation": "",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/rlm150521_136.jpg?itok=ZHRrM1kQ"
  },
  {
    "id": 55,
    "title": "Volta al Ginebrell",
    "category": "Centre Trail-Trail",
    "duration": "3,00h",
    "distance": "11,50km",
    "elevation": "1.130m",
    "image":
        "https://www.vallboi.cat/sites/default/files/styles/teaser_no_decoration/public/route/image/rlm150521_124.jpg?itok=iTdPtHk_"
  }
];

getRoutesFromJson2() {
//  final firestoreService = FirestoreService();



  List<RouteInfo> routesList = [];
  List<RouteInfo> excursions = [];
  List<RouteInfo> passejades = [];
  List<RouteInfo> caminates = [];
  List<RouteInfo> others = [];

  List<List<RouteInfo>> routes = [];


//  List<RouteInfo> rrr = await firestoreService.getRoutes();


//  final aa = firestoreService.getRoutes();

  print('00000000000000');
//  print(aa);


//  final routesA =
//  firestoreService.getRoutes().forEach((dd) {
//    var routeCategory = dd.;
//    var newRoute = new RouteInfo(e['id'], e['title'], e['category'],
//        e['duration'], e['distance'], e['elevation'], e['image']);
//
//    if (routeCategory == 'Excursió') {
//      excursions.add(newRoute);
//    } else if (routeCategory == 'Passejada') {
//      passejades.add(newRoute);
//    } else if (routeCategory == 'Caminada') {
//      caminates.add(newRoute);
//    } else {
//      others.add(newRoute);
//    }
//
//    firestoreService.saveRoute(newRoute);
//    routesList.add(newRoute);
//  });

  routesArray.forEach((e) {
    var routeCategory = e['category'];
    var newRoute = new RouteInfo(e['id'], e['title'], e['category'],
        e['duration'], e['distance'], e['elevation'], e['image']);

    if (routeCategory == 'Excursió') {
      excursions.add(newRoute);
    } else if (routeCategory == 'Passejada') {
      passejades.add(newRoute);
    } else if (routeCategory == 'Caminada') {
      caminates.add(newRoute);
    } else {
      others.add(newRoute);
    }

//    firestoreService.saveRoute(newRoute);
    routesList.add(newRoute);
  });

  routes.add(excursions);
  routes.add(passejades);
  routes.add(caminates);
  routes.add(others);

  return routes;
}
