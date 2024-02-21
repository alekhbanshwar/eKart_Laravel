<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class UserAuth
{
   
    public function handle(Request $request, Closure $next): Response
    {
        if ($request->session()->has('FRONT_USER_LOGIN')) {

        } else {
            $request->session()->flash('error', 'Access Denied');
            return redirect('/');
        }
        return $next($request);
    }
}
