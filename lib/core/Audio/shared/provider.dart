import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:su_doku_f/core/Audio/Domain/ab_audio_services.dart';
import 'package:su_doku_f/core/Audio/Infra/services_audio.dart';

final audioProvider = Provider<AudioPlayer>((ref) {
  return AudioPlayer();
});
final audioServiceProvider = Provider<AbAudioService>((ref) {
  return AudioService(ref.watch(audioProvider));
});
