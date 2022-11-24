<?php

namespace Database\Factories;

use App\Models\Learner;
use App\Models\Subject;
use App\Models\Teacher;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Mark>
 */
class MarkFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'value' => $this->faker->numberBetween(1, 5),
            'weight' => 1,
            'subject_id' => Subject::factory()->create()->id,
            'teacher_id' => Teacher::all()->random()->id,
            'learner_id' => Learner::all()->random()->id,
        ];
    }
}
