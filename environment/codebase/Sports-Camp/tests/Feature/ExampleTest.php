<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Support\Facades\DB;
use Tests\TestCase;

class ExampleTest extends TestCase {
    use RefreshDatabase;

    public function test_returns_a_successful_response(): void {
        $response = $this->get('/');

        $response->assertStatus(200);
    }

    /** @test */
    public function it_can_access_the_faqs_table_in_sqlite(): void
    {
        // 1. Try to insert a dummy record into your 'faqs' table
        DB::table('faqs')->insert([
            'question' => 'How do I join the camp?',
            'answer' => 'Sign up on our registration page.',
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        // 2. Query it back out to verify it exists
        $faq = DB::table('faqs')->where('question', 'How do I join the camp?')->first();

        // 3. Assertions to confirm the data is there
        $this->assertNotNull($faq);
        $this->assertEquals('Sign up on our registration page.', $faq->answer);
    }
}