import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:trial1/Model/MoviePopularModel.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:trial1/Screens/ListDetail.dart';
import 'package:trial1/constants.dart';

class List extends StatefulWidget {
  const List({Key? key}) : super(key: key);

  @override
  State<List> createState() => _ListState();
}

class _ListState extends State<List> {
  MoviePopularModel? moviePopularModel;
  bool _isloaded = true;

  void getAllListMP() async {
    setState(() {
      _isloaded = false;
    });
    final res = await http.get(
      Uri.parse(
          "https://api.themoviedb.org/3/movie/popular?api_key=f891cf2366d28a778cced8946cc44c56&language=en-US&page=1"),
    );
    print("status code " + res.statusCode.toString());
    moviePopularModel =
        MoviePopularModel.fromJson(json.decode(res.body.toString()));
    print("Title : " + moviePopularModel!.results![1].originalTitle.toString());
    setState(() {
      _isloaded = true;
    });
  }

//dijalankan pertama kali
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAllListMP();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          color: kBGColor,
          child: _isloaded
              ? StaggeredGridView.countBuilder(
                  itemCount: moviePopularModel!.results!.length,
                  // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //   crossAxisCount: 2,
                  //   mainAxisSpacing: 150.0,
                  //   crossAxisSpacing: 20.0,
                  //   // childAspectRatio: 20.0,
                  // ),
                  crossAxisCount: 2,
                  mainAxisSpacing: 5.0,
                  crossAxisSpacing: 5.0,
                  staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                        onTap: () {
                          print("pindah detail");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ListDetail(
                                posterPath: moviePopularModel!
                                    .results![index].posterPath
                                    .toString(),
                                title: moviePopularModel!.results![index].title
                                    .toString(),
                                overview: moviePopularModel!
                                    .results![index].overview
                                    .toString(),
                                release_date: moviePopularModel!
                                    .results![index].releaseDate
                                    .toString(),
                                original_title: moviePopularModel!
                                    .results![index].originalTitle
                                    .toString(),
                                popularity: moviePopularModel!
                                    .results![index].popularity
                                    .toString(),
                                backdrop_path: moviePopularModel!
                                    .results![index].backdropPath
                                    .toString(),
                              ),
                            ),
                          );
                        },
                        child: buildItemCard(index));
                  },
                )
              // ? ListView.builder(
              //     itemCount: moviePopularModel!.results!.length,
              //     itemBuilder: (BuildContext context, int index) {
              //       return InkWell(
              //         onTap: () {
              //           print("pindah detail");
              //           Navigator.push(
              //             context,
              //             MaterialPageRoute(
              //               builder: (context) => ListDetail(),
              //             ),
              //           );
              //         },
              //         child: Wrap(
              //           children: [
              //             Container(
              //               alignment: Alignment.center,
              //               child: Card(
              //                 child: Container(
              //                   margin: EdgeInsets.all(15),
              //                   child: Column(
              //                     children: [
              //                       Image.network(
              //                           "https://image.tmdb.org/t/p/w300" +
              //                               moviePopularModel!
              //                                   .results![index].posterPath
              //                                   .toString())
              //                     ],
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           ],
              //         ),
              //       );
              //     },
              //   )
              : CircularProgressIndicator(),
        ),
      ),
    );
  }

  Widget buildItemCard(int index) {
    return Expanded(
      child: Card(
        color: Colors.white,
        elevation: 5,
        child: Container(
          margin: EdgeInsets.all(5),
          child: Column(
            children: [
              Image.network(
                "https://image.tmdb.org/t/p/w300" +
                    moviePopularModel!.results![index].posterPath.toString(),
              ),
              SizedBox(height: 5),
              Text(
                textAlign: TextAlign.center,
                moviePopularModel!.results![index].title.toString(),
                maxLines: 2,
                overflow: TextOverflow.clip,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 3),
              // Padding(
              //   // padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              //   child:
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
