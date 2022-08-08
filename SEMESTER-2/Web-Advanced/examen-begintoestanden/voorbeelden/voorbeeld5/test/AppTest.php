<?php

use GuzzleHttp\Client;
use PHPUnit\Framework\TestCase;

class AppTest extends TestCase
{

    public function setUp():void
    {
        $this->http = new Client(['base_uri' => 'localhost:8080']);
    }

    public function tearDown():void {
        $this->http = null;
    }


    public function testGETApp_workingServerAndDatabase_statuscode200()
    {
        $response = $this->http->request('GET', 'app.php');
        $this->assertEquals(200, $response->getStatusCode());
    }

    public function testGETApp_personInDatabase_outputContainsHallo()
    {
        $response = $this->http->request('GET', 'app.php');
        $this->assertStringContainsString("Hallo,", $response->getBody()->getContents());
    }

}


