// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MainEvent {

 int get index;
/// Create a copy of MainEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MainEventCopyWith<MainEvent> get copyWith => _$MainEventCopyWithImpl<MainEvent>(this as MainEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainEvent&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'MainEvent(index: $index)';
}


}

/// @nodoc
abstract mixin class $MainEventCopyWith<$Res>  {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) _then) = _$MainEventCopyWithImpl;
@useResult
$Res call({
 int index
});




}
/// @nodoc
class _$MainEventCopyWithImpl<$Res>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._self, this._then);

  final MainEvent _self;
  final $Res Function(MainEvent) _then;

/// Create a copy of MainEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? index = null,}) {
  return _then(_self.copyWith(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MainEvent].
extension MainEventPatterns on MainEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MainSwitchTab value)?  switchTab,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MainSwitchTab() when switchTab != null:
return switchTab(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MainSwitchTab value)  switchTab,}){
final _that = this;
switch (_that) {
case MainSwitchTab():
return switchTab(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MainSwitchTab value)?  switchTab,}){
final _that = this;
switch (_that) {
case MainSwitchTab() when switchTab != null:
return switchTab(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int index)?  switchTab,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MainSwitchTab() when switchTab != null:
return switchTab(_that.index);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int index)  switchTab,}) {final _that = this;
switch (_that) {
case MainSwitchTab():
return switchTab(_that.index);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int index)?  switchTab,}) {final _that = this;
switch (_that) {
case MainSwitchTab() when switchTab != null:
return switchTab(_that.index);case _:
  return null;

}
}

}

/// @nodoc


class MainSwitchTab implements MainEvent {
  const MainSwitchTab(this.index);
  

@override final  int index;

/// Create a copy of MainEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MainSwitchTabCopyWith<MainSwitchTab> get copyWith => _$MainSwitchTabCopyWithImpl<MainSwitchTab>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainSwitchTab&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'MainEvent.switchTab(index: $index)';
}


}

/// @nodoc
abstract mixin class $MainSwitchTabCopyWith<$Res> implements $MainEventCopyWith<$Res> {
  factory $MainSwitchTabCopyWith(MainSwitchTab value, $Res Function(MainSwitchTab) _then) = _$MainSwitchTabCopyWithImpl;
@override @useResult
$Res call({
 int index
});




}
/// @nodoc
class _$MainSwitchTabCopyWithImpl<$Res>
    implements $MainSwitchTabCopyWith<$Res> {
  _$MainSwitchTabCopyWithImpl(this._self, this._then);

  final MainSwitchTab _self;
  final $Res Function(MainSwitchTab) _then;

/// Create a copy of MainEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(MainSwitchTab(
null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
