<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Models\Membership;
use App\Models\User;
class MembershipController extends Controller
{
    //

    public function getMembershipDscount($userId) {
        $id = $userId;
        $membership = User::find($id)->membership;
        return $membership;
    }
}
