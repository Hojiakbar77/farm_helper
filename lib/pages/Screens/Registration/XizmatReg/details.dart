import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Some extends StatelessWidget {
  Some({super.key});
  var url = "http://shop.uzex.uz/files/offers/pic201202160933013_1.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(mainAxisSize: MainAxisSize.max, children: [
          Container(
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 0, 138, 236),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: const AlignmentDirectional(0, 0),
                  child: Hero(
                    tag: 'productShoe',
                    transitionOnUserGestures: true,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network(
                        url,
                        fit: BoxFit.cover,
                        height: double.infinity,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-0.14, 0.01),
                  child: Padding(
                    padding:
                    const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: const Color(0x3A000000),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: IconButton(
                                    icon: const Icon(
                                      Icons.arrow_back_rounded,
                                      color: Colors.white,
                                      size: 24,
                                    ),
                                    onPressed: () async {
                                      Navigator.pop(context);
                                    }),
                              ),
                              Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: const Color(0x3A000000),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.favorite_border,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24, 20, 24, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Ammafos',
                    style: TextStyle(
                      color: Color(0xFF1D2429),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: const [
                Text(
                  'fermer indastres',
                  style: TextStyle(
                    color: Color(0xFF57636C),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24, 8, 24, 0),
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
                  itemSize: 24,
                  onRatingUpdate: (double value) {},
                ),
                const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                  child: Text(
                    '4/5 Reviews',
                    style: TextStyle(
                      color: Color(0xFF57636C),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24, 16, 24, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: const [
                Text(
                  'Tavsif',
                  style: TextStyle(
                    color: Color(0xFF1D2429),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: const [
                SizedBox(
                  width: 340,
                  child: Text(
                    'tarkibida azot bilan fosfor boʻlgan konsentrlangan mineral oʻgʻit. U asosan monoammoniyfosfat va qisman diammoniy-fosfat aralashma-sidan iborat. Donador A. tarkibida ka-mida 10% azot, koʻpi bilan 45% fosfor an-gidrid bor. A.da ballast komponentlar boʻlmaydi. Suvda eriydi, fizik xususi-yatlari yaxshi. A.ni har xil tuproqlarda qoʻllash mumkin. Gʻoʻzaga ekishdan oldin (shudgorlashda, bahorgi haydashda, ekish oldidan, ekish vaqtida), gullash oldidan yoki gullagan vaqtida solinganida ham samarali. Oʻzbekistonning paxtakor xoʻjaliklarida fosforli oʻgʻitlar yillik normasining 80% ni A. tashkil etadi, chunki u boshqa murakkab konsentrlangan azotli-fosforli oʻgʻitlarga qaraganda samaraliroq. "Ammofos" ishlab chiqarish birlash-masi (Olmaliq kimyo zavodi) va Samarqand kimyo zavodida ishlab chiqariladi.[1]',
                    style: TextStyle(
                      color: Color(0xFF57636C),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24, 16, 24, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: const [
                Text(
                  'Kilogrami',
                  style: TextStyle(
                    color: Color(0xFF1D2429),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nechi kg',
                  hintText: 'miqdorni kiriting'),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(12, 12, 16, 0),
            child: Wrap(
              spacing: 0,
              runSpacing: 0,
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.start,
              direction: Axis.horizontal,
              runAlignment: WrapAlignment.start,
              verticalDirection: VerticalDirection.down,
              clipBehavior: Clip.none,
              children: const [],
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                topLeft: Radius.circular(20.0),
              ),
            ),
            height: 140,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 50,
                    width: 160,
                    child: TextButton.icon(
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              Color(0xFF1D2429))),
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      label: const Text(
                        'Sotib olish',
                        style: TextStyle(color: Colors.white),
                      ),
                      icon: const Icon(
                        FontAwesomeIcons.apple,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 160,
                    child: TextButton.icon(
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              Color.fromARGB(255, 13, 87, 13))),
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      label: const Text(
                        "Saqlab qo'yish",
                        style: TextStyle(color: Colors.white),
                      ),
                      icon: const Icon(
                        FontAwesomeIcons.bagShopping,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
