import Game from '../../../src/js/lingo/Game';
import Word from '../../../src/js/lingo/Word';
// naam: Emir Ozdemir

describe('constructor',
  () => {
      it('should throw error when argument is not a Word object',
        () => {
          expect(() => {
            new Game(3550);
          }).toThrow(Error)
        })
      it('should generate a Game-object for valid argument',
        () => {
          const game = new Game(new Word("woord"));
          expect(game).toBeInstanceOf(Game)
        }
      )
  }
);

test('addGuess should expand the array with valid Word argument',
  () => {
    const game = new Game(new Word("woord"));
    game.addGuess(new Word("weerd"));
    expect(game.numberOfGuesses).toBe(1);
  });

test('evaluate should return correct score',
  () => {
    const game = new Game(new Word("woord"));
    game.addGuess(new Word("water"));

    const result = game.evaluate(0);
    expect(result).toBe("R...Y")
  })