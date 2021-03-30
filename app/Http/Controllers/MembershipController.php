<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use\Models\Membership;
use\Models\User;

class MembershipController extends Controller
{
    //

    public function getMembershipDscount($userId) {
        $membership = User::where('id', $userId)->membership();
        return $membership->discount_percent;
    }
}
