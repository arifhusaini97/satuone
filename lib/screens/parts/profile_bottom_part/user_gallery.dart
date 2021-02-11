import 'package:flutter/material.dart';
import 'package:satuone/models/stages_model.dart';

class UserGallery extends StatelessWidget {
  UserGallery();

  @override
  Widget build(BuildContext context) {
    return postGridView();
  }
  Widget postGridView() {
    return GridView.builder(
      itemCount: 50,
      padding: EdgeInsets.only(top: 4.0),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 3.0,
        crossAxisSpacing: 3.0,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                image0,
              ),
            ),
          ),
        );
      },
    );
  }
}