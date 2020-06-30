<?php

namespace App\Http\Actions;

use App\Http\Controllers\Controller;
use App\User;

class FetchUsers extends Controller
{
    /** @var User */
    private $user;

    public function __construct(User $user)
    {
        $this->user = $user;
    }

    public function __invoke()
    {
        return $this->user->all();
    }
}
