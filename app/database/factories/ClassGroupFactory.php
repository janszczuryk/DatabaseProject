<?php

namespace Database\Factories;

use App\Models\Teacher;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\ClassGroup>
 */
class ClassGroupFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'name' => $this->faker->numberBetween(1, 8) . $this->faker->randomLetter(),
            'school_type' => $this->faker->randomElement(['Primary School', 'High School']),
            'class_teacher_id' => Teacher::all()->random()->id,
        ];
    }
}
