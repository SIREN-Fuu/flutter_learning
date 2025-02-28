// ignore_for_file: invalid_use_of_internal_member, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main.g.dart';

void main() => runApp(const ProviderScope(child: NamespaceWidget()));

// -----------------------------------------------------------------------------
// 「登録」関連のNotifierProviderをプライベートで定義してコード生成し、
// `RegistrationProviders` クラスでまとめて公開する例
// -----------------------------------------------------------------------------
@riverpod
class _Nickname extends _$Nickname {
  @override
  String build() => '';
}

@riverpod
class _Birthday extends _$Birthday {
  @override
  String build() => '';
}

@riverpod
class _LivingPlace extends _$LivingPlace {
  @override
  String build() => '';
}

// ignore: avoid_classes_with_only_static_members
class Registration {
  static final AutoDisposeNotifierProviderImpl<_Nickname, String>
      nicknameProvider = _nicknameProvider;
  static final AutoDisposeNotifierProviderImpl<_Birthday, String>
      birthdayProvider = _birthdayProvider;
  static final AutoDisposeNotifierProviderImpl<_LivingPlace, String>
      livingPlaceProvider = _livingPlaceProvider;
}

// -----------------------------------------------------------------------------
// 「お問い合わせ」関連の `StateProvider` をクラス内で定義し、
// `InquiryProviders` クラスでまとめて公開する例
// -----------------------------------------------------------------------------

// ignore: avoid_classes_with_only_static_members
class Inquiry {
  static final StateProvider<String> nameProvider = StateProvider((ref) => '');
  static final StateProvider<String> emailProvider = StateProvider((ref) => '');
  static final StateProvider<String> contentProvider =
      StateProvider((ref) => '');
}

// -----------------------------------------------------------------------------
// `Class名.プロバイダ名` で使用する
// -----------------------------------------------------------------------------

class NamespaceWidget extends ConsumerWidget {
  const NamespaceWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nickname = ref.watch(Registration.nicknameProvider);
    final birthday = ref.watch(Registration.birthdayProvider);
    final livingPlace = ref.watch(Registration.livingPlaceProvider);
    final name = ref.watch(Inquiry.nameProvider);
    final email = ref.watch(Inquiry.emailProvider);
    final content = ref.watch(Inquiry.contentProvider);
    return Column(
      children: [
        Text('nickname: $nickname'),
        Text('birthday: $birthday'),
        Text('livingPlace: $livingPlace'),
        Text('name: $name'),
        Text('email: $email'),
        Text('content: $content'),
      ],
    );
  }
}
