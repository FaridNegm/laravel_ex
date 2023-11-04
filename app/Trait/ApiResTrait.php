<?php

namespace App\Trait;

trait ApiResTrait{

    public function apiRes($data = null, $msg = null, $status = null){
        $arr = [
            'data' => $data,
            'msg' => $msg,
            'status' => $status,
        ];

        return response()->json($arr);
    }
}