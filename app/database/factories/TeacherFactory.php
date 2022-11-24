<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\Hash;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Teacher>
 */
class TeacherFactory extends Factory
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
            'lastname' => $this->faker->lastname(),
            'title' => $this->faker->randomElement(['engineer', 'master', 'doctor', 'habilitated doctor', 'professor']),
            'email' => $this->faker->unique()->safeEmail(),
            'password' => Hash::make($this->faker->password(6, 10)),
            'phone' => $this->faker->phoneNumber(),
            'pesel' => $this->faker->numberBetween(10000000000, 99999999999),
        ];
    }
}
