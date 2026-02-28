import 'package:mochy/data/models/ai_characters.dart';

class DummyData {
  static final List<AiCharacters> characters = [
    AiCharacters(
      id: '1',
      name: 'Nara',
      description: 'Ai companionmu yang sangat imut',
      avatar: 'N',
      greeting: 'Halo! Aku Nara, yuk cerita-cerita sama aku! (≧◡≦)',
    ),
    AiCharacters(
      id: '2',
      name: 'Mochi',
      description: 'Ai companionmu yang sangat imut',
      avatar: 'M',
      greeting: 'Halo! Aku Mochi, yuk cerita-cerita sama aku! (≧◡≦)',
    ),
  ];

  static String generateFakeResponse(String characterId) {
    if (characterId == '1') {
      return 'Hai! Aku Nara, senang bisa ngobrol denganmu! (≧◡≦)';
    } else if (characterId == '2') {
      return 'Hai! Aku Mochi, senang bisa ngobrol denganmu! (≧◡≦)';
    } else {
      return 'hmm mnenarik';
    }
  }
}
