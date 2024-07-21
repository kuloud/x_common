extension IndexedIterable<E> on Iterable<E> {
  //
  // Row(
  //   children: _items.mapIndexed((item, index) =>
  //     Row(
  //       children: [
  //         Text.rich(TextSpan(text: item.title)),
  //         if (index < _items.length - 1) VerticalDivider(),
  //       ],
  //     )
  //   ).toList(),
  // )
  Iterable<T> mapIndexed<T>(T Function(E e, int i) f) {
    var i = 0;
    return map((e) => f(e, i++));
  }
}
