import Game from '../../../src/js/game/Game';


import RandomGenerator from '../../../src/js/util/RandomGenerator';

const invalidArguments = [[1], [null], ['a']];

describe('constructor',
    () => {
        it('should generate a Game-object if a valid argument is provided',
            () => {
                let randomGenerator = new RandomGenerator();
                let game = new Game(randomGenerator);
                expect(game).toBeInstanceOf(Game);
            }
        )

        test.each(invalidArguments)(
            'should throw an Error given an invalid argument',
            (argument) => {
                expect(() => {
                    let game = new Game(argument);
                }).toThrow(Error)
        });

        it('should throw error when 1st parameter is not provided',
            () => {
                expect(() => {
                    let game = new Game();
                }).toThrow(Error)
            })
    }
);


describe('throwDice',
    () => {
        it('should return 4 if 4 times the same value is thrown',
            () => {
                let randomGenerator = new RandomGenerator();
                let spy = jest.spyOn(randomGenerator, 'next').mockImplementation(() => 1);
                let game = new Game(randomGenerator);
                let result = game.throwDice(4);
                expect(result).toBe(4);
                expect(spy).toHaveBeenCalled();
                spy.mockRestore();
            }
        )
    
       it('should return 0 if two dice throws are not equal',
            () => {
                let randomGenerator = new RandomGenerator();
                let spy = jest.spyOn(randomGenerator, 'next').mockImplementation(() => 2)
                    .mockImplementationOnce(() => 1)
                    .mockImplementationOnce(() => 1);
                let game = new Game(randomGenerator);
                let result = game.throwDice(4);
                expect(result).toBe(0);
                expect(spy).toHaveBeenCalled();
                spy.mockRestore();
            }
        )
    }
);


