import 'package:flutter/material.dart';
import 'package:matheusnathan_sit/src/app/components/matheusNButton.dart';
import 'package:matheusnathan_sit/src/app/components/matheusNListCard.dart';
import 'package:matheusnathan_sit/src/app/components/matheusNTextField.dart';
import 'package:matheusnathan_sit/src/app/models/movieList_model.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MovieListState();
  }
}

class _MovieListState extends State<HomePage> {
  TextEditingController movieNameController = TextEditingController();
  TextEditingController ratingController = TextEditingController();
  FocusNode movieNameFocus = FocusNode();
  FocusNode ratingFocus = FocusNode();

  List<ListModel> movieList = [];

  addMovie({required String? movieName, required String? rating}) {
    setState(() {
      movieList.insert(
        0,
        ListModel(
          movieName: movieName,
          rating: num.parse(rating.toString()),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListaFilme"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            StandardTextField(
              focusNode: movieNameFocus,
              userInputController: movieNameController,
              label: "Movie Name",
              onEditingComplete: () {
                ratingFocus.nextFocus();
              },
            ),
            StandardTextField(
              focusNode: ratingFocus,
              userInputController: ratingController,
              label: "Rating",
            ),
            StandardButton(
              onPressed: () {
                addMovie(
                    movieName: movieNameController.text,
                    rating: ratingController.text);
              },
            ),
            ListView.separated(
              shrinkWrap: true,
              itemBuilder: ((context, index) {
                var listItem = movieList[index];
                return MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      print(listItem.movieName);
                    },
                    child: StandardListCard(
                      movieName: listItem.movieName,
                      rating: '${listItem.rating} \ /5',
                    ),
                  ),
                );
              }),
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 15,
                );
              },
              itemCount: movieList.length,
            )
          ],
        ),
      ),
    );
  }
}
