// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../models/elon_model.dart';
import '../../../utils/const.dart';

class DetailsPage extends StatelessWidget {
  Elonlar elonlar;
  DetailsPage({
    Key? key,
    required this.elonlar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(9)),
                      backgroundBlendMode: BlendMode.screen,
                      color: Colors.white.withOpacity(0.4)),
                  child: IconButton(
                      onPressed: () {}, icon: const Icon(CupertinoIcons.heart)),
                ),
              )
            ],
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                elonlar.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Expanded(
              child: Column(
                children: [
                  Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(13, 15, 24, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            elonlar.service,
                            style: const TextStyle(
                              color: Color(0xFF1D2429),
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Expanded(child: Container()),
                          Text(
                            elonlar.price,
                            style: const TextStyle(
                                fontSize: 24,
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10, 18, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        RatingBar.builder(
                          itemBuilder: (context, index) => const Icon(
                            Icons.star_rounded,
                            color: Color(0xFFFFA130),
                          ),
                          direction: Axis.horizontal,
                          maxRating: 5,
                          unratedColor: const Color(0xFF95A1AC),
                          itemCount: 5,
                          itemSize: 30,
                          onRatingUpdate: (double value) {},
                        ),
                        const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                          child: Text(
                            '4/5 Reviews',
                            style: TextStyle(
                              color: Color(0xFF57636C),
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 15.0, top: 10),
                        child: Text(
                          "Tavsif",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      elonlar.details,
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Ish turi  :",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          elonlar.time,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: TextButton.icon(
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              Color(0xFF1D2429))),
                      onPressed: () {
                      },
                      label: const Text(
                        "Qo'ng'iroq qilish",
                        style: TextStyle(color: Colors.white),
                      ),
                      icon: const Icon(
                        FontAwesomeIcons.phone,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Container(
                      alignment: Alignment.topCenter,
                      height: 160,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30.0),
                          topLeft: Radius.circular(30.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 50,
                              width: 200,
                              child: TextButton.icon(
                                style: const ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll<Color>(
                                            colorDeppGreen)),
                                onPressed: () {
                                },
                                label: const Text(
                                  "Chatda yozish",
                                  style: TextStyle(color: colorWhite),
                                ),
                                icon: const Icon(
                                  FontAwesomeIcons.facebookMessenger,
                                  color: colorWhite,
                                  size: 20,
                                ),
                              ),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
