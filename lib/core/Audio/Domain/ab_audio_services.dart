abstract class AbAudioService {
  Future<void> playSucess();
  Future<void> playInput();
  Future<void> playFail();
  Future<void> playOperation();
  Future<void> playSound(String assetName);
  Future<void> playVoice(String soundUrl);
}
