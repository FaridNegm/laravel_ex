<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SearchController extends Controller
{
    public function index()
    {
        return view('search');
    }

    public function search(Request $request)
    {
        $query = $request->input('query');

        $results = file_get_contents(public_path('data.json'));
        $results = json_decode($results, true);

        $filteredResults = array_filter($results, function ($result) use ($query) {
            return stristr($result['name'], $query) !== false;
        });

        return response()->json($filteredResults);
    }
}
