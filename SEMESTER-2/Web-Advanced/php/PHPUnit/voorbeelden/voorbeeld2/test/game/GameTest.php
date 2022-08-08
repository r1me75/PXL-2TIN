<?php
use game\Game;
use util\RandomGenerator;
use PHPUnit\Framework\TestCase;
class GameTest extends TestCase
{
    public function testThrowDice_3ThrowsAllEqual_returns3()
    {
        $randomGenerator = $this->getMockBuilder(RandomGenerator::class)
                     ->getMock();
        $randomGenerator->method('next')
                   ->willReturn(1);
        
        $game=new Game($randomGenerator);
        $winnings = $game->throwDice(3);
        $this->assertEquals(3 , $winnings);
    }

    public function testThrowDice_4ThrowsFirstTwoEqualThirdDifferent_returns0()
    {
        $randomGenerator = $this->getMockBuilder(RandomGenerator::class)
                     ->getMock();
        $randomGenerator->method('next')
                    ->will($this->onConsecutiveCalls(1, 1, 4, 3));        
        $game=new Game($randomGenerator);
        $winnings = $game->throwDice(4);
        $this->assertEquals(0 , $winnings);
    }

    public function testThrowDice_1Throw_return0()
    {
        $randomGenerator = $this->getMockBuilder(RandomGenerator::class)
                     ->setMethods(['next'])
                     ->getMock();
        $game=new Game($randomGenerator);
        $winnings = $game->throwDice(1);
        $this->assertEquals(0 , $winnings);
    }

}
