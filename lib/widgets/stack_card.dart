import 'package:flutter/material.dart';

import 'package:EveryPoke/models/Pokemon/pokemon.dart';
import 'package:EveryPoke/preferences.dart';

class StackCard extends StatelessWidget {
  const StackCard({
    Key key,
    this.title,
    this.image,
    this.color,
    this.fontSize,
    this.strokeWidth,
    this.stroke = true,
    this.pokemon,
    this.action,
  }) : super(key: key);

  final String title;
  final Image image;
  final Color color;
  final double fontSize;
  final double strokeWidth;
  final bool stroke;
  final Pokemon pokemon;
  final void Function() action;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: action,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(15, 35, 35, 15),
            decoration: BoxDecoration(
                color: color ?? mainColor,
                borderRadius: BorderRadius.circular(15)),
          ),
          Align(child: image ?? getImage(pokemon)),
          Container(
            margin: EdgeInsets.fromLTRB(15, 35, 35, 15),
            child: title == null
                ? null
                : Align(
                    alignment: Alignment.bottomRight,
                    child: Stack(children: [
                      Text(
                        '$title',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: fontSize ?? 40,
                        ),
                      ),
                      Text(
                        stroke != null && stroke ? '$title' : '',
                        style: TextStyle(
                          fontSize: fontSize ?? 40,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = strokeWidth ?? 1.25
                            ..color = Colors.black,
                        ),
                      ),
                    ]),
                  ),
          )
        ],
      ),
    );
  }
}

Widget getImage(Pokemon pokemon) {
  if (pokemon != null) {
    return Image.network(pokemon.sprites.other.officialArtwork.frontDefault ??
        pokemon.sprites.other.dreamWorld.frontDefault ??
        pokemon.sprites.frontDefault ??
        getImageUrlByVersion(pokemon.sprites.versions) ??
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png');
  }
  return null;
}

String getImageUrlByVersion(Versions versions) {
  return versions.generationViii.icons.frontDefault ??
      versions.generationVii.icons.frontDefault ??
      versions.generationVi.omegarubyAlphasapphire.frontDefault ??
      versions.generationV.blackWhite.frontDefault ??
      versions.generationIv.platinum.frontDefault ??
      versions.generationIii.emerald.frontDefault ??
      null;
}
