<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Result extends Model
{
    use HasFactory;
    protected $fillable = ['user_id','question_id','answer_id','quiz_id'];

    //Result belongs to particular Question
    public function question(){
    	return $this->belongsTo(Question::class);
    }

    //Result belongs to particular answer
    public function answer(){
    	return $this->belongsTo(Answer::class);
    }
}
