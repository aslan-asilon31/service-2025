<?php

namespace App\Livewire\Auth\Forms;

use Livewire\Attributes\Validate;
use Livewire\Form;

class LoginForm extends Form
{
  public string|null $email = null;
  public string|null $sandi = null;

  public function rules()
  {
    return [
      'loginForm.email' => 'required|string',
      'loginForm.sandi' => 'required|string',
    ];
  }

  public function attributes()
  {
    return [
      'loginForm.email' => 'email',
      'loginForm.sandi' => 'sandi',
    ];
  }
}
