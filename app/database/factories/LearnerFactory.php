<?php

namespace Database\Factories;

use App\Models\ClassGroup;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\Hash;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Learner>
 */
class LearnerFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'name' => $this->faker->name(),
            'lastname' => $this->faker->lastName(),
            'email' => $this->faker->unique()->safeEmail(),
            'password' => Hash::make($this->faker->password(6, 10)),
            'pesel' => $this->faker->numberBetween(10000000000, 99999999999),
            'class_id' => ClassGroup::factory()->create()->id,
        ];
    }
}
