<?php namespace Common\Util;

use Common\Exception\Exception;
use Model\BaseModel;


class Model
{

    static function throwOnFirstMessage(BaseModel $model, $replace = null)
    {
        if ($messages = $model->getMessages()) {
            $message = $messages[0]->getMessage();
            if ($replace) {
                $message = str_replace(':err', $message, $replace);
            }
            throw new Exception($message);
        }

        return true;
    }

}