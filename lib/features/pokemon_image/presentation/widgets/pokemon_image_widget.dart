import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_mapp_clean_architecture/features/pokemon_image/business/entities/pokemon_image_entity.dart';
import 'package:flutter_mapp_clean_architecture/features/pokemon_image/presentation/providers/pokemon_image_provider.dart';

import '../../../../../core/errors/failure.dart';

class PokemonImageWidget extends StatelessWidget {
  const PokemonImageWidget({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    PokemonImageEntity? pie =
        Provider.of<PokemonImageProvider>(context).pokemonImage;
    Failure? faiulre = Provider.of<PokemonImageProvider>(context).failure;
    late Widget widget;

    if (pie != null) {
      widget = Expanded(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.orange,
            image: DecorationImage(
              // image: AssetImage('assets/images/mapp.png'),
              image: FileImage(File(pie.path))
            ),
          ),
          child: child,
        ),
      );
    } else if (faiulre != null) {
      widget = Expanded(
        child: Center(
          child: child,
        ),
      );
    } else {
      widget = Expanded(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    return widget;
  }
}
