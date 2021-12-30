import 'dart:collection';

import 'package:collection/collection.dart' as collections;

extension IterableExtensions<TElement> on Iterable<TElement> {
  ///Returns `true` this collection is null or there are no elements in this collection.
  bool isNullOrEmpty() => isEmpty;

  /// Returns the first element of a sequence, or a default value if the
  /// sequence contains no elements.
  /// Or returns the first element of the sequence that satisfies a condition
  /// or a default value if no such element is found if predicate was
  /// specified.
  TElement? firstOrDefault([bool Function(TElement)? predicate]) {
    final it = iterator;
    if (predicate == null) {
      if (it.moveNext()) {
        return it.current;
      }
    } else {
      while (it.moveNext()) {
        final current = it.current;
        if (predicate(current)) {
          return current;
        }
      }
    }

    return null;
  }

  /// Returns the last element of a sequence, or a default value if the
  /// sequence contains no elements.
  /// Or returns the last element of a sequence that satisfies a condition or a
  /// default value if no such element is found if predicate was specified.
  TElement? lastOrDefault([bool Function(TElement)? predicate]) {
    final it = iterator;
    TElement? result;
    if (predicate == null) {
      while (it.moveNext()) {
        result = it.current;
      }
    } else {
      while (it.moveNext()) {
        final current = it.current;
        if (predicate(current)) {
          result = current;
        }
      }
    }

    return result;
  }

  TElement? minBy<TValue>(TValue Function(TElement element) orderBy,
      {int Function(TValue value1, TValue value2)? compare}) {
    return collections.minBy(this, orderBy, compare: compare);
  }

  TElement? maxBy<TValue>(TValue Function(TElement? element) orderBy,
      {int Function(TValue value1, TValue value2)? compare}) {
    return collections.maxBy(this, orderBy, compare: compare);
  }

  /// Computes the sum of the sequence of values that are obtained by invoking
  /// a transform function on each element of the input sequence.
  TResult sum<TResult extends num>(TResult Function(TElement) selector) {
    return _compute<TResult>((r, v) => r + v as TResult, selector);
  }

  TResult _compute<TResult extends num>(
    TResult Function(TResult, TResult) operation,
    TResult Function(TElement) selector,
  ) {
    TResult? result;
    var first = true;
    final it = iterator;
    while (it.moveNext()) {
      final current = it.current;
      if (current == null) {
        continue;
      }

      final value = selector(current);
      result ??= value;
      if (!first) {
        result = operation(result, value);
      } else {
        first = false;
      }
    }

    return result ?? (result is int ? 0 : 0.0) as TResult;
  }

  Map<TKey, List<TElement>> groupBy<TKey>(
      TKey Function(TElement? element) key) {
    return collections.groupBy(this, key);
  }

  /// Returns a new lazy [Iterable] containing only distinct elements from the
  /// collection.
  ///
  /// The elements in the resulting list are in the same order as they were in
  /// the source collection.
  Iterable<TElement> distinct() sync* {
    var existing = HashSet<TElement>();
    for (var current in this) {
      if (existing.add(current)) {
        yield current;
      }
    }
  }

  /// Returns a new lazy [Iterable] containing only elements from the collection
  /// having distinct keys returned by the given [selector] function.
  ///
  /// The elements in the resulting list are in the same order as they were in
  /// the source collection.
  Iterable<TElement> distinctBy<LProperty>(
      LProperty Function(TElement element) selector) sync* {
    var existing = HashSet<LProperty>();
    for (var current in this) {
      if (existing.add(selector(current))) {
        yield current;
      }
    }
  }
}
