// Mocks generated by Mockito 5.2.0 from annotations
// in millicast_flutter_sdk/test/signaling_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i6;

import 'package:async/async.dart' as _i7;
import 'package:eventify/eventify.dart' as _i3;
import 'package:millicast_flutter_sdk/src/utils/transaction_manager.dart'
    as _i5;
import 'package:mockito/mockito.dart' as _i1;
import 'package:stream_channel/stream_channel.dart' as _i4;
import 'package:web_socket_channel/web_socket_channel.dart' as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeWebSocketChannel_0 extends _i1.Fake implements _i2.WebSocketChannel {
}

class _FakeListener_1 extends _i1.Fake implements _i3.Listener {}

class _FakeWebSocketSink_2 extends _i1.Fake implements _i2.WebSocketSink {}

class _FakeStreamChannel_3<T> extends _i1.Fake implements _i4.StreamChannel<T> {
}

/// A class which mocks [TransactionManager].
///
/// See the documentation for Mockito's code generation for more information.
class MockTransactionManager extends _i1.Mock
    implements _i5.TransactionManager {
  MockTransactionManager() {
    _i1.throwOnMissingStub(this);
  }

  @override
  num get maxId =>
      (super.noSuchMethod(Invocation.getter(#maxId), returnValue: 0) as num);
  @override
  set maxId(num? _maxId) =>
      super.noSuchMethod(Invocation.setter(#maxId, _maxId),
          returnValueForMissingStub: null);
  @override
  _i2.WebSocketChannel get transport =>
      (super.noSuchMethod(Invocation.getter(#transport),
          returnValue: _FakeWebSocketChannel_0()) as _i2.WebSocketChannel);
  @override
  set transport(_i2.WebSocketChannel? _transport) =>
      super.noSuchMethod(Invocation.setter(#transport, _transport),
          returnValueForMissingStub: null);
  @override
  Map<int, dynamic> get transactions =>
      (super.noSuchMethod(Invocation.getter(#transactions),
          returnValue: <int, dynamic>{}) as Map<int, dynamic>);
  @override
  set transactions(Map<int, dynamic>? _transactions) =>
      super.noSuchMethod(Invocation.setter(#transactions, _transactions),
          returnValueForMissingStub: null);
  @override
  set listener(_i6.StreamSubscription<dynamic>? _listener) =>
      super.noSuchMethod(Invocation.setter(#listener, _listener),
          returnValueForMissingStub: null);
  @override
  set sdp(String? _sdp) => super.noSuchMethod(Invocation.setter(#sdp, _sdp),
      returnValueForMissingStub: null);
  @override
  int get count =>
      (super.noSuchMethod(Invocation.getter(#count), returnValue: 0) as int);
  @override
  _i6.Future<dynamic> cmd(String? name, dynamic data) =>
      (super.noSuchMethod(Invocation.method(#cmd, [name, data]),
          returnValue: Future<dynamic>.value()) as _i6.Future<dynamic>);
  @override
  _i3.Listener on(
          String? event, Object? context, _i3.EventCallback? callback) =>
      (super.noSuchMethod(Invocation.method(#on, [event, context, callback]),
          returnValue: _FakeListener_1()) as _i3.Listener);
  @override
  void off(_i3.Listener? listener) =>
      super.noSuchMethod(Invocation.method(#off, [listener]),
          returnValueForMissingStub: null);
  @override
  void removeListener(String? eventName, _i3.EventCallback? callback) => super
      .noSuchMethod(Invocation.method(#removeListener, [eventName, callback]),
          returnValueForMissingStub: null);
  @override
  void emit(String? event, [Object? sender, Object? data]) =>
      super.noSuchMethod(Invocation.method(#emit, [event, sender, data]),
          returnValueForMissingStub: null);
  @override
  void clear() => super.noSuchMethod(Invocation.method(#clear, []),
      returnValueForMissingStub: null);
  @override
  void removeAllByCallback(_i3.EventCallback? callback) =>
      super.noSuchMethod(Invocation.method(#removeAllByCallback, [callback]),
          returnValueForMissingStub: null);
  @override
  void removeAllByEvent(String? event) =>
      super.noSuchMethod(Invocation.method(#removeAllByEvent, [event]),
          returnValueForMissingStub: null);
  @override
  int getListenersCount(String? event) =>
      (super.noSuchMethod(Invocation.method(#getListenersCount, [event]),
          returnValue: 0) as int);
}

/// A class which mocks [WebSocketChannel].
///
/// See the documentation for Mockito's code generation for more information.
class MockWebSocketChannel extends _i1.Mock implements _i2.WebSocketChannel {
  MockWebSocketChannel() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Stream<dynamic> get stream =>
      (super.noSuchMethod(Invocation.getter(#stream),
          returnValue: Stream<dynamic>.empty()) as _i6.Stream<dynamic>);
  @override
  _i2.WebSocketSink get sink => (super.noSuchMethod(Invocation.getter(#sink),
      returnValue: _FakeWebSocketSink_2()) as _i2.WebSocketSink);
  @override
  void pipe(_i4.StreamChannel<dynamic>? other) =>
      super.noSuchMethod(Invocation.method(#pipe, [other]),
          returnValueForMissingStub: null);
  @override
  _i4.StreamChannel<S> transform<S>(
          _i4.StreamChannelTransformer<S, dynamic>? transformer) =>
      (super.noSuchMethod(Invocation.method(#transform, [transformer]),
          returnValue: _FakeStreamChannel_3<S>()) as _i4.StreamChannel<S>);
  @override
  _i4.StreamChannel<dynamic> transformStream(
          _i6.StreamTransformer<dynamic, dynamic>? transformer) =>
      (super.noSuchMethod(Invocation.method(#transformStream, [transformer]),
              returnValue: _FakeStreamChannel_3<dynamic>())
          as _i4.StreamChannel<dynamic>);
  @override
  _i4.StreamChannel<dynamic> transformSink(
          _i7.StreamSinkTransformer<dynamic, dynamic>? transformer) =>
      (super.noSuchMethod(Invocation.method(#transformSink, [transformer]),
              returnValue: _FakeStreamChannel_3<dynamic>())
          as _i4.StreamChannel<dynamic>);
  @override
  _i4.StreamChannel<dynamic> changeStream(
          _i6.Stream<dynamic> Function(_i6.Stream<dynamic>)? change) =>
      (super.noSuchMethod(Invocation.method(#changeStream, [change]),
              returnValue: _FakeStreamChannel_3<dynamic>())
          as _i4.StreamChannel<dynamic>);
  @override
  _i4.StreamChannel<dynamic> changeSink(
          _i6.StreamSink<dynamic> Function(_i6.StreamSink<dynamic>)? change) =>
      (super.noSuchMethod(Invocation.method(#changeSink, [change]),
              returnValue: _FakeStreamChannel_3<dynamic>())
          as _i4.StreamChannel<dynamic>);
  @override
  _i4.StreamChannel<S> cast<S>() =>
      (super.noSuchMethod(Invocation.method(#cast, []),
          returnValue: _FakeStreamChannel_3<S>()) as _i4.StreamChannel<S>);
}