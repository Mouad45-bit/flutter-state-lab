import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'fav_model.dart';

class FavWidgetProvider extends StatelessWidget {
  const FavWidgetProvider({super.key});

  @override
  Widget build(BuildContext context) {
    final fav = Provider.of<FavModel>(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Icon(
            fav.isFav ? Icons.star : Icons.star_border,
            color: Colors.yellow,
          ),
          onPressed: fav.toggleFav,
        ),
        const SizedBox(width: 8),
        Text('${fav.favCount}'),
      ],
    );
  }
}
