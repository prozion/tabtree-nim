import std/sequtils

proc remove*[T](s: openArray[T]; pred: proc (x: T): bool): seq[T] =
  filter(s, proc (x: T): bool = not pred(x))
