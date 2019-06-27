import 'story.dart';

class StoryBrain {
  int _storyNumber = 0;
  List<Story> _storyData = [
    Story(
        storyTitle:
            'Votre voiture a crevé un pneu sur une route sinueuse au milieu de nulle part sans réception de téléphone portable. Vous décidez de faire de l\'auto-stop. Une camionnette rouillée s\'arrête à côté de vous. Un homme avec un chapeau à larges bords et des yeux sans âme ouvre la porte du passager et vous demande: "Besoin d\'un tour, mon garçon?".',
        choice1: 'Je vais y aller. Merci pour l\'aide!',
        choice2: 'Mieux vaut lui demander s’il est un meurtrier d’abord.'),
    Story(
        storyTitle:
            'Il acquiesce lentement, sans s\'apercevoir de la question.',
        choice1: 'Au moins il est honnête. Je vais monter dedans.',
        choice2: 'Attends, je sais comment changer un pneu.'),
    Story(
        storyTitle:
            'Lorsque vous commencez à conduire, l\’étranger commence à parler de sa relation avec sa mère. Il devient de plus en plus en colère. Il vous demande d\'ouvrir la boîte à gants. À l\'intérieur, vous trouverez un couteau ensanglanté, deux doigts tranchés et une cassette de Elton John. Il atteint la boîte à gants.',
        choice1: 'J\'aime Elton John! Donnez-lui la cassette.',
        choice2: 'C\'est lui ou moi! Vous prenez le couteau et le poignardez.'),
    Story(
        storyTitle:
            'Quoi? Un tel flic! Saviez-vous que les accidents de la route sont la deuxième cause de décès accidentel dans la plupart des groupes d\'âge?',
        choice1: 'Rejouer',
        choice2: ''),
    Story(
        storyTitle:
            'Lorsque vous défoncez la barrière de sécurité et que vous vous dirigez vers les rochers déchiquetés, vous réfléchissez à la sagesse douteuse de poignarder quelqu\'un alors qu\'il conduit une voiture dans laquelle vous vous trouvez.',
        choice1: 'Rejouer',
        choice2: ''),
    Story(
        storyTitle:
            'Vous vous associez au meurtrier en chantonnant des vers de "Peux-tu ressentir l\'amour ce soir". Il vous dépose à la prochaine ville. Avant de partir, il vous demande si vous connaissez de bons endroits pour déposer les corps. Vous répondez: "Essayez le quai".',
        choice1: 'Rejouer',
        choice2: '')
  ];

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  int nexStory(int choiceNumber) {
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    } else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
      return true;
    } else {
      return false;
    }
  }
}
