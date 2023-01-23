import 'package:just_audio/just_audio.dart';
import 'package:su_doku_f/core/Audio/Domain/ab_audio_services.dart';

class AudioService implements AbAudioService {
  final AudioPlayer player;

  AudioService(this.player);

  @override
  Future<void> playSucess() async {
    await playSound('success.mp3');
  }

  @override
  Future<void> playInput() async {
    await playSound('input.mp3');
  }

  @override
  Future<void> playFail() async {
    await playSound('fail.mp3');
  }

  @override
  Future<void> playOperation() async {
    await playSound('operate.mp3');
  }

  @override
  Future<void> playSound(String assetName) async {
    await player.setAsset('assets/sound/$assetName');
    await player.play();
  }

  @override
  Future<void> playVoice(String soundUrl) async {
    await player.setUrl(soundUrl);
    await player.play();
  }
}
