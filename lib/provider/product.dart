import 'package:brainwired/data/models/productmodel.dart';
import 'package:brainwired/data/repositories/productrepo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userRepositoryProvider = Provider((ref) => UserRepository());

final userProvider = FutureProvider<List<User>>((ref) async {
  final userRepository = ref.watch(userRepositoryProvider);
  return userRepository.fetchProducts();
});
