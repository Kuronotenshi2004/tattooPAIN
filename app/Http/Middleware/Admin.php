<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class Admin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        if (auth()->user()->admin == 1) {
            return $next($request);
        } else {
            return response()->json(["error" => [
                "code" => 403,
                "message" => "You are not admin!"
            ]], 403, [ "Content-type" => "application/json" ]);
        }
    }
}
