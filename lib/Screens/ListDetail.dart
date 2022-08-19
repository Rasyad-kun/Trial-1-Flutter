import 'dart:html';

import 'package:flutter/material.dart';

class ListDetail extends StatefulWidget {
  final String posterPath;
  final String title;
  final String overview;
  final String release_date;
  final String original_title;
  final String popularity;
  final String backdrop_path;

  const ListDetail({
    Key? key,
    required this.posterPath,
    required this.title,
    required this.overview,
    required this.release_date,
    required this.original_title,
    required this.popularity,
    required this.backdrop_path,
  }) : super(key: key);

  @override
  State<ListDetail> createState() => _ListDetailState();
}

class _ListDetailState extends State<ListDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Card(
          elevation: 10,
          margin: EdgeInsets.all(15),
          // shape:
          //     RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Stack(
            children: [
              Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.transparent,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              "https://image.tmdb.org/t/p/w400" +
                                  widget.backdrop_path)),
                    ),
                    height: 350.0,
                  ),
                  Container(
                    height: 350.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.white,
                      gradient: LinearGradient(
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                        colors: [
                          Colors.grey.withOpacity(0.0),
                          Colors.white,
                        ],
                        stops: [0.0, 1.0],
                      ),
                    ),
                  )
                ],
              ),

              // Image.network(
              //   "https://image.tmdb.org/t/p/w400" + widget.backdrop_path,
              //   fit: BoxFit.cover,
              //   width: double.infinity,
              // ),

              // Container(
              //   decoration: new BoxDecoration(
              //       gradient: new LinearGradient(
              //           colors: [
              //         Colors.black,
              //         Colors.grey,
              //       ],
              //           stops: [
              //         0.0,
              //         1.0
              //       ],
              //           begin: FractionalOffset.topCenter,
              //           end: FractionalOffset.bottomCenter,
              //           tileMode: TileMode.repeated)),
              // ),

              // Column(
              //   mainAxisSize: MainAxisSize.max,
              //   children: [

              //   ],
              // ),
              Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    SizedBox(height: 150),
                    Image.network(
                      "https://image.tmdb.org/t/p/w400" + widget.posterPath,
                    ),
                    SizedBox(height: 20),
                    Text(
                      widget.title,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          textAlign: TextAlign.start,
                          "Original Title : " + widget.original_title,
                          style: TextStyle(fontSize: 24),
                        ),
                        SizedBox(height: 5),
                        Text(
                          textAlign: TextAlign.start,
                          "Release : " + widget.release_date,
                          style: TextStyle(fontSize: 24),
                        ),
                        SizedBox(height: 5),
                        Text(
                          textAlign: TextAlign.start,
                          "Popularity : " + widget.popularity,
                          style: TextStyle(fontSize: 24),
                        ),
                        SizedBox(height: 15),
                        Text(
                          widget.overview,
                          style: TextStyle(fontSize: 24),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
