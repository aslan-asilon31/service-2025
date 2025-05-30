<?php

namespace App\Helpers\Permission\Traits;

use Illuminate\Support\Facades\Auth;

trait WithPermission
{
    public function permission($permissionId = '')
    {
        $permissionName = $permissionId;
        $user = Auth::user();
        dd('Login berhasil!', Auth::user()->nama);

        if (!$user || !$user->can($permissionName)) {
            abort(403, 'Unauthorized action.');
        }

        return true;
    }
}
