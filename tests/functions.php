<?php

require '../functions.php';
use PHPUnit\Framework\TestCase;

class StackTest extends TestCase
{
    /*
     * Success tests the getBike function
     */
    public function testSuccessGetBike()
    {
        $expected = 'string';
        $input = [["manufacturer" => "Pinarello", "model" => "F12", "wheelset" => "Zipp Carbon", "groupset" => "Dura-Ace Di2 52-34/11-28", "image" => "Cannondale-CAAD8-2015-Tiagra.jpg"]];
        $case = getBike($input);
        $this->assertInternalType($expected, $case);
    }

    /*
     * Failure tests the getBike function
     */
    public function testFailureGetBike()
    {
        $expected = 'Please check bike data is complete.';
        $input = ["manufacturer" => "Pinarello", "model" => "F12", "wheelset" => "Zipp Carbon", "groupset" => "Dura-Ace Di2 52-34/11-28"];
        $case = getBike($input);
        $this->assertEquals($expected, $case);
    }

    /*
     * Malformed tests the getBike function
     */
    public function testMalformedGetBike()
    {
        $input = 'Pinarello F12 with Zipp Carbon wheels and a Dura-Ace Di2 groupset';
        $this->expectException(TypeError::class);
        getBike($input);
    }
}