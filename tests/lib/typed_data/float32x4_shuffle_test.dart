// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
// VMOptions=--optimization-counter-threshold=10 --no-background-compilation

// Library tag to be able to run in html test framework.
library float32x4_shuffle_test;

import 'dart:typed_data';
import "package:expect/expect.dart";

void testShuffle00() {
  var m = new Float32x4(1.0, 2.0, 3.0, 4.0);
  var c;
  c = m.shuffle(Float32x4.xxxx);
  Expect.equals(1.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.xxxy);
  Expect.equals(1.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.xxxz);
  Expect.equals(1.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.xxxw);
  Expect.equals(1.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.xxyx);
  Expect.equals(1.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.xxyy);
  Expect.equals(1.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.xxyz);
  Expect.equals(1.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.xxyw);
  Expect.equals(1.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.xxzx);
  Expect.equals(1.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.xxzy);
  Expect.equals(1.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.xxzz);
  Expect.equals(1.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.xxzw);
  Expect.equals(1.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.xxwx);
  Expect.equals(1.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.xxwy);
  Expect.equals(1.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.xxwz);
  Expect.equals(1.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.xxww);
  Expect.equals(1.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(4.0, c.w);
}

void testShuffle01() {
  var m = new Float32x4(1.0, 2.0, 3.0, 4.0);
  var c;
  c = m.shuffle(Float32x4.xyxx);
  Expect.equals(1.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.xyxy);
  Expect.equals(1.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.xyxz);
  Expect.equals(1.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.xyxw);
  Expect.equals(1.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.xyyx);
  Expect.equals(1.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.xyyy);
  Expect.equals(1.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.xyyz);
  Expect.equals(1.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.xyyw);
  Expect.equals(1.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.xyzx);
  Expect.equals(1.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.xyzy);
  Expect.equals(1.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.xyzz);
  Expect.equals(1.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.xyzw);
  Expect.equals(1.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.xywx);
  Expect.equals(1.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.xywy);
  Expect.equals(1.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.xywz);
  Expect.equals(1.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.xyww);
  Expect.equals(1.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(4.0, c.w);
}

void testShuffle02() {
  var m = new Float32x4(1.0, 2.0, 3.0, 4.0);
  var c;
  c = m.shuffle(Float32x4.xzxx);
  Expect.equals(1.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.xzxy);
  Expect.equals(1.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.xzxz);
  Expect.equals(1.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.xzxw);
  Expect.equals(1.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.xzyx);
  Expect.equals(1.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.xzyy);
  Expect.equals(1.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.xzyz);
  Expect.equals(1.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.xzyw);
  Expect.equals(1.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.xzzx);
  Expect.equals(1.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.xzzy);
  Expect.equals(1.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.xzzz);
  Expect.equals(1.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.xzzw);
  Expect.equals(1.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.xzwx);
  Expect.equals(1.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.xzwy);
  Expect.equals(1.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.xzwz);
  Expect.equals(1.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.xzww);
  Expect.equals(1.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(4.0, c.w);
}

void testShuffle03() {
  var m = new Float32x4(1.0, 2.0, 3.0, 4.0);
  var c;
  c = m.shuffle(Float32x4.xwxx);
  Expect.equals(1.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.xwxy);
  Expect.equals(1.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.xwxz);
  Expect.equals(1.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.xwxw);
  Expect.equals(1.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.xwyx);
  Expect.equals(1.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.xwyy);
  Expect.equals(1.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.xwyz);
  Expect.equals(1.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.xwyw);
  Expect.equals(1.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.xwzx);
  Expect.equals(1.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.xwzy);
  Expect.equals(1.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.xwzz);
  Expect.equals(1.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.xwzw);
  Expect.equals(1.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.xwwx);
  Expect.equals(1.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.xwwy);
  Expect.equals(1.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.xwwz);
  Expect.equals(1.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.xwww);
  Expect.equals(1.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(4.0, c.w);
}

void testShuffle10() {
  var m = new Float32x4(1.0, 2.0, 3.0, 4.0);
  var c;
  c = m.shuffle(Float32x4.yxxx);
  Expect.equals(2.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.yxxy);
  Expect.equals(2.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.yxxz);
  Expect.equals(2.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.yxxw);
  Expect.equals(2.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.yxyx);
  Expect.equals(2.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.yxyy);
  Expect.equals(2.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.yxyz);
  Expect.equals(2.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.yxyw);
  Expect.equals(2.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.yxzx);
  Expect.equals(2.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.yxzy);
  Expect.equals(2.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.yxzz);
  Expect.equals(2.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.yxzw);
  Expect.equals(2.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.yxwx);
  Expect.equals(2.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.yxwy);
  Expect.equals(2.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.yxwz);
  Expect.equals(2.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.yxww);
  Expect.equals(2.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(4.0, c.w);
}

void testShuffle11() {
  var m = new Float32x4(1.0, 2.0, 3.0, 4.0);
  var c;
  c = m.shuffle(Float32x4.yyxx);
  Expect.equals(2.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.yyxy);
  Expect.equals(2.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.yyxz);
  Expect.equals(2.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.yyxw);
  Expect.equals(2.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.yyyx);
  Expect.equals(2.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.yyyy);
  Expect.equals(2.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.yyyz);
  Expect.equals(2.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.yyyw);
  Expect.equals(2.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.yyzx);
  Expect.equals(2.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.yyzy);
  Expect.equals(2.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.yyzz);
  Expect.equals(2.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.yyzw);
  Expect.equals(2.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.yywx);
  Expect.equals(2.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.yywy);
  Expect.equals(2.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.yywz);
  Expect.equals(2.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.yyww);
  Expect.equals(2.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(4.0, c.w);
}

void testShuffle12() {
  var m = new Float32x4(1.0, 2.0, 3.0, 4.0);
  var c;
  c = m.shuffle(Float32x4.yzxx);
  Expect.equals(2.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.yzxy);
  Expect.equals(2.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.yzxz);
  Expect.equals(2.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.yzxw);
  Expect.equals(2.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.yzyx);
  Expect.equals(2.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.yzyy);
  Expect.equals(2.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.yzyz);
  Expect.equals(2.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.yzyw);
  Expect.equals(2.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.yzzx);
  Expect.equals(2.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.yzzy);
  Expect.equals(2.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.yzzz);
  Expect.equals(2.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.yzzw);
  Expect.equals(2.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.yzwx);
  Expect.equals(2.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.yzwy);
  Expect.equals(2.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.yzwz);
  Expect.equals(2.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.yzww);
  Expect.equals(2.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(4.0, c.w);
}

void testShuffle13() {
  var m = new Float32x4(1.0, 2.0, 3.0, 4.0);
  var c;
  c = m.shuffle(Float32x4.ywxx);
  Expect.equals(2.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.ywxy);
  Expect.equals(2.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.ywxz);
  Expect.equals(2.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.ywxw);
  Expect.equals(2.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.ywyx);
  Expect.equals(2.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.ywyy);
  Expect.equals(2.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.ywyz);
  Expect.equals(2.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.ywyw);
  Expect.equals(2.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.ywzx);
  Expect.equals(2.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.ywzy);
  Expect.equals(2.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.ywzz);
  Expect.equals(2.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.ywzw);
  Expect.equals(2.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.ywwx);
  Expect.equals(2.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.ywwy);
  Expect.equals(2.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.ywwz);
  Expect.equals(2.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.ywww);
  Expect.equals(2.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(4.0, c.w);
}

void testShuffle20() {
  var m = new Float32x4(1.0, 2.0, 3.0, 4.0);
  var c;
  c = m.shuffle(Float32x4.zxxx);
  Expect.equals(3.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.zxxy);
  Expect.equals(3.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.zxxz);
  Expect.equals(3.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.zxxw);
  Expect.equals(3.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.zxyx);
  Expect.equals(3.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.zxyy);
  Expect.equals(3.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.zxyz);
  Expect.equals(3.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.zxyw);
  Expect.equals(3.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.zxzx);
  Expect.equals(3.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.zxzy);
  Expect.equals(3.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.zxzz);
  Expect.equals(3.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.zxzw);
  Expect.equals(3.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.zxwx);
  Expect.equals(3.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.zxwy);
  Expect.equals(3.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.zxwz);
  Expect.equals(3.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.zxww);
  Expect.equals(3.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(4.0, c.w);
}

void testShuffle21() {
  var m = new Float32x4(1.0, 2.0, 3.0, 4.0);
  var c;
  c = m.shuffle(Float32x4.zyxx);
  Expect.equals(3.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.zyxy);
  Expect.equals(3.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.zyxz);
  Expect.equals(3.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.zyxw);
  Expect.equals(3.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.zyyx);
  Expect.equals(3.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.zyyy);
  Expect.equals(3.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.zyyz);
  Expect.equals(3.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.zyyw);
  Expect.equals(3.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.zyzx);
  Expect.equals(3.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.zyzy);
  Expect.equals(3.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.zyzz);
  Expect.equals(3.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.zyzw);
  Expect.equals(3.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.zywx);
  Expect.equals(3.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.zywy);
  Expect.equals(3.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.zywz);
  Expect.equals(3.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.zyww);
  Expect.equals(3.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(4.0, c.w);
}

void testShuffle22() {
  var m = new Float32x4(1.0, 2.0, 3.0, 4.0);
  var c;
  c = m.shuffle(Float32x4.zzxx);
  Expect.equals(3.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.zzxy);
  Expect.equals(3.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.zzxz);
  Expect.equals(3.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.zzxw);
  Expect.equals(3.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.zzyx);
  Expect.equals(3.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.zzyy);
  Expect.equals(3.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.zzyz);
  Expect.equals(3.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.zzyw);
  Expect.equals(3.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.zzzx);
  Expect.equals(3.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.zzzy);
  Expect.equals(3.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.zzzz);
  Expect.equals(3.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.zzzw);
  Expect.equals(3.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.zzwx);
  Expect.equals(3.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.zzwy);
  Expect.equals(3.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.zzwz);
  Expect.equals(3.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.zzww);
  Expect.equals(3.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(4.0, c.w);
}

void testShuffle23() {
  var m = new Float32x4(1.0, 2.0, 3.0, 4.0);
  var c;
  c = m.shuffle(Float32x4.zwxx);
  Expect.equals(3.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.zwxy);
  Expect.equals(3.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.zwxz);
  Expect.equals(3.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.zwxw);
  Expect.equals(3.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.zwyx);
  Expect.equals(3.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.zwyy);
  Expect.equals(3.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.zwyz);
  Expect.equals(3.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.zwyw);
  Expect.equals(3.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.zwzx);
  Expect.equals(3.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.zwzy);
  Expect.equals(3.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.zwzz);
  Expect.equals(3.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.zwzw);
  Expect.equals(3.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.zwwx);
  Expect.equals(3.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.zwwy);
  Expect.equals(3.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.zwwz);
  Expect.equals(3.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.zwww);
  Expect.equals(3.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(4.0, c.w);
}

void testShuffle30() {
  var m = new Float32x4(1.0, 2.0, 3.0, 4.0);
  var c;
  c = m.shuffle(Float32x4.wxxx);
  Expect.equals(4.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.wxxy);
  Expect.equals(4.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.wxxz);
  Expect.equals(4.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.wxxw);
  Expect.equals(4.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.wxyx);
  Expect.equals(4.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.wxyy);
  Expect.equals(4.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.wxyz);
  Expect.equals(4.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.wxyw);
  Expect.equals(4.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.wxzx);
  Expect.equals(4.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.wxzy);
  Expect.equals(4.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.wxzz);
  Expect.equals(4.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.wxzw);
  Expect.equals(4.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.wxwx);
  Expect.equals(4.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.wxwy);
  Expect.equals(4.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.wxwz);
  Expect.equals(4.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.wxww);
  Expect.equals(4.0, c.x);
  Expect.equals(1.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(4.0, c.w);
}

void testShuffle31() {
  var m = new Float32x4(1.0, 2.0, 3.0, 4.0);
  var c;
  c = m.shuffle(Float32x4.wyxx);
  Expect.equals(4.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.wyxy);
  Expect.equals(4.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.wyxz);
  Expect.equals(4.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.wyxw);
  Expect.equals(4.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.wyyx);
  Expect.equals(4.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.wyyy);
  Expect.equals(4.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.wyyz);
  Expect.equals(4.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.wyyw);
  Expect.equals(4.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.wyzx);
  Expect.equals(4.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.wyzy);
  Expect.equals(4.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.wyzz);
  Expect.equals(4.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.wyzw);
  Expect.equals(4.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.wywx);
  Expect.equals(4.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.wywy);
  Expect.equals(4.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.wywz);
  Expect.equals(4.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.wyww);
  Expect.equals(4.0, c.x);
  Expect.equals(2.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(4.0, c.w);
}

void testShuffle32() {
  var m = new Float32x4(1.0, 2.0, 3.0, 4.0);
  var c;
  c = m.shuffle(Float32x4.wzxx);
  Expect.equals(4.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.wzxy);
  Expect.equals(4.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.wzxz);
  Expect.equals(4.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.wzxw);
  Expect.equals(4.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.wzyx);
  Expect.equals(4.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.wzyy);
  Expect.equals(4.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.wzyz);
  Expect.equals(4.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.wzyw);
  Expect.equals(4.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.wzzx);
  Expect.equals(4.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.wzzy);
  Expect.equals(4.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.wzzz);
  Expect.equals(4.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.wzzw);
  Expect.equals(4.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.wzwx);
  Expect.equals(4.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.wzwy);
  Expect.equals(4.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.wzwz);
  Expect.equals(4.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.wzww);
  Expect.equals(4.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(4.0, c.w);
}

void testShuffle33() {
  var m = new Float32x4(1.0, 2.0, 3.0, 4.0);
  var c;
  c = m.shuffle(Float32x4.wwxx);
  Expect.equals(4.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.wwxy);
  Expect.equals(4.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.wwxz);
  Expect.equals(4.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.wwxw);
  Expect.equals(4.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(1.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.wwyx);
  Expect.equals(4.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.wwyy);
  Expect.equals(4.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.wwyz);
  Expect.equals(4.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.wwyw);
  Expect.equals(4.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.wwzx);
  Expect.equals(4.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.wwzy);
  Expect.equals(4.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.wwzz);
  Expect.equals(4.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.wwzw);
  Expect.equals(4.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(3.0, c.z);
  Expect.equals(4.0, c.w);
  c = m.shuffle(Float32x4.wwwx);
  Expect.equals(4.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(1.0, c.w);
  c = m.shuffle(Float32x4.wwwy);
  Expect.equals(4.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(2.0, c.w);
  c = m.shuffle(Float32x4.wwwz);
  Expect.equals(4.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(3.0, c.w);
  c = m.shuffle(Float32x4.wwww);
  Expect.equals(4.0, c.x);
  Expect.equals(4.0, c.y);
  Expect.equals(4.0, c.z);
  Expect.equals(4.0, c.w);
}

void testShuffleNonConstant(mask) {
  var m = new Float32x4(1.0, 2.0, 3.0, 4.0);
  var c;
  c = m.shuffle(mask);
  if (mask == 1) {
    Expect.equals(2.0, c.x);
    Expect.equals(1.0, c.y);
    Expect.equals(1.0, c.z);
    Expect.equals(1.0, c.w);
  } else {
    Expect.equals(Float32x4.yyyy + 1, mask);
    Expect.equals(3.0, c.x);
    Expect.equals(2.0, c.y);
    Expect.equals(2.0, c.z);
    Expect.equals(2.0, c.w);
  }
}

void testInvalidShuffle(mask) {
  // Not a valid mask.
  Expect.isFalse(mask <= 255 && mask >= 0);
  var m = new Float32x4(1.0, 2.0, 3.0, 4.0);
  var c;
  Expect.throws(() {
    c = m.shuffle(mask);
  });
}

void testShuffle() {
  var m = new Float32x4(1.0, 2.0, 3.0, 4.0);
  var c;
  c = m.shuffle(Float32x4.wzyx);
  Expect.equals(4.0, c.x);
  Expect.equals(3.0, c.y);
  Expect.equals(2.0, c.z);
  Expect.equals(1.0, c.w);
}

main() {
  var xxxx = Float32x4.xxxx + 1;
  var yyyy = Float32x4.yyyy + 1;
  for (int i = 0; i < 20; i++) {
    testShuffle();
    testShuffle00();
    testShuffle01();
    testShuffle02();
    testShuffle03();
    testShuffle10();
    testShuffle11();
    testShuffle12();
    testShuffle13();
    testShuffle20();
    testShuffle21();
    testShuffle22();
    testShuffle23();
    testShuffle30();
    testShuffle31();
    testShuffle32();
    testShuffle33();
    testShuffleNonConstant(xxxx);
    testShuffleNonConstant(yyyy);
    testInvalidShuffle(256);
    testInvalidShuffle(-1);
  }
}