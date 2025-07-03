import 'package:flutter/material.dart';

MaterialColor getThemeColor(String? condition) {
  switch (condition?.toLowerCase()) {
    case 'sunny':
      return Colors.amber;
    case 'partlycloudy':
      return Colors.orange;
    case 'cloudy':
    case 'overcast':
      return Colors.blueGrey;
    case 'mist':
    case 'fog':
    case 'freezingfog':
      return Colors.grey;
    case 'patchyrainpossible':
    case 'lightrain':
    case 'patchylightrain':
    case 'lightrainshower':
    case 'patchylightdrizzle':
    case 'lightdrizzle':
      return Colors.lightBlue;
    case 'clear':
    case 'moderaterainattimes':
    case 'moderaterain':
    case 'heavyrainattimes':
    case 'heavyrain':
    case 'moderateorheavyrainshower':
    case 'torrentialrainshower':
      return Colors.blue;
    case 'patchysnowpossible':
    case 'lightsnow':
    case 'patchylightsnow':
    case 'lightsnowshowers':
      return Colors.cyan;
    case 'moderatesnow':
    case 'patchymoderatesnow':
    case 'patchyheavysnow':
    case 'heavysnow':
    case 'moderateorheavysnowshowers':
      return Colors.indigo;
    case 'patchysleetpossible':
    case 'lightsleet':
    case 'lightsleetshowers':
    case 'moderateorheavysleet':
    case 'moderateorheavysleetshowers':
      return Colors.teal;
    case 'patchyfreezingdrizzlepossible':
    case 'freezingdrizzle':
    case 'heavyfreezingdrizzle':
    case 'lightfreezingrain':
    case 'moderateorheavyfreezingrain':
      return Colors.blueGrey;
    case 'thunderyoutbreakspossible':
    case 'patchylightrainwiththunder':
    case 'moderateorheavyrainwiththunder':
    case 'patchylightsnowwiththunder':
    case 'moderateorheavysnowwiththunder':
      return Colors.deepPurple;
    case 'blowingsnow':
    case 'blizzard':
      return Colors.blueGrey;
    case 'icepellets':
    case 'lightshowersoficepellets':
    case 'moderateorheavyshowersoficepellets':
      return Colors.deepOrange;
    default:
      return Colors.blue; // fallback color
  }
}