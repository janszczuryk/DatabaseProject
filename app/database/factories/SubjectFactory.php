<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Subject>
 */
class SubjectFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        $startTime = '2022-09-01 08:00:00';
        $endTimes = [
            '2023-01-05 08:00:00',
            '2023-06-25 08:00:00',
        ];
        return [
            'name' => $this->faker->randomElement(['PE', 'IT', 'Physics', 'Maths', 'Science', 'English', 'Russian', 'Biology', 'Chemistry', 'Geography', 'History', 'Art', 'Music']),
            'valid_date_from' => $startTime,
            'valid_date_to' => $this->faker->randomElement($endTimes),
        ];
    }
}
