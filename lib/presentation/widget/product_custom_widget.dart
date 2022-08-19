// import 'package:flutter/material.dart';
// import 'package:mandiritestadityatmdb/domain/movie_genre_model/movie_genre_model.dart';

// import 'movie_card_builder.dart';

// class CharacterCard extends StatelessWidget {
//   final MovieGenreModel character;

//   const CharacterCard({required this.character});

//   @override
//   Widget build(BuildContext context) {
//     return MovieCardBuilder(
//       onTap: () {},
//       borderRadius: BorderRadius.all(Radius.circular(10.0)),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           //  buildImage(),
//           const SizedBox(width: 10.0),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 10.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   character.name,
//                   style: const TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 18.0,
//                   ),
//                 ),
//                 Row(
//                   children: [
//                     Container(
//                       height: 7.0,
//                       width: 7.0,
//                       decoration: const BoxDecoration(
//                         color: Colors.green,
//                         shape: BoxShape.circle,
//                       ),
//                     ),
//                     const SizedBox(width: 5.0),
//                     Text(
//                       '${character.id} - ${character.name}',
//                       style: const TextStyle(
//                         fontWeight: FontWeight.w500,
//                         fontSize: 14.0,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   buildInfo(title, content) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           title,
//           style: const TextStyle(
//             fontWeight: FontWeight.w500,
//             fontSize: 14.0,
//             color: Colors.grey,
//           ),
//         ),
//         Text(
//           content,
//           style: const TextStyle(
//             fontWeight: FontWeight.w500,
//             fontSize: 14.0,
//           ),
//         ),
//       ],
//     );
//   }

//   // Color statusColor() {
//   //   switch(character.status.toLowerCase()) {
//   //     case 'alive':
//   //       return Colors.green[300];
//   //     case 'dead':
//   //       return Colors.red;
//   //     case 'unknown':
//   //       return Colors.blueGrey;
//   //     default:
//   //       return Colors.blueGrey;
//   //   }
//   // }
// }
