<?php

namespace Database\Factories;

use App\Models\ClassGroup;
use App\Models\Subject;
use App\Models\Teacher;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Lesson>
 */
class LessonFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'start_time' => $this->faker->dateTime(),
            'length_minutes' => 45,
            'subject_id' => Subject::factory()->create()->id,
            'class_id' => ClassGroup::factory()->create()->id,
            'teacher_id' => Teacher::all()->random()->id,
        ];
    }
}
