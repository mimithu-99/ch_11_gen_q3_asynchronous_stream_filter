/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

import 'dart:async';
export 'src/dart_ch_11_gen_q3_asynchronous_stream_filter_base.dart';

// TODO: Export any libraries intended for clients of this package.

Future<List<int>> filterStreamAsync(
    Stream<int> input, Function predicate) async {
  List<int> output = [];

  await for (int indivList in input) {
    bool match = await predicate(indivList);
    if (match) {
      output.add(indivList);
    }
  }
  return output;
}

// Future<List<int>> filterStreamAsync ( 
//   Stream<int> input, Function predicate) async {
//     List <int> ans = [];

//     await for (int itemsInt in input) {
//       bool match = await predicate (itemsInt);
//       if(match) {
//         ans.add(itemsInt);
//       }
//     }
//     return ans;

//   }



