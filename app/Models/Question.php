<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    use HasFactory;
    protected $fillable = ['question','quiz_id'];

    private $limit = 10;//to limit the number of Data for Pagination
    private $order = 'DESC';


    //Question has many answers
    public function answers(){
    	return $this->hasMany(Answer::class);
    }

    //Question belongs to particular quiz
    public function quiz(){
    	return $this->belongsTo(Quiz::class);
    }


    public function storeQuestion($data){
        $data['quiz_id'] = $data['quiz'];
        return Question::create($data);
    }

    public function getQuestions(){
        return Question::orderBy('created_at',$this->order)->with('quiz')->paginate($this->limit);
    }

    public function getQuestionById($id){
        return Question::find($id);
    }

    public function findQuestion($id){
        return Question::find($id);
    }

    public function updateQuestion($id,$data){
        $question = Question::find($id);
        $question->question = $data['question'];//$data['question'] => data coming from the Form
        $question->quiz_id = $data['quiz'];
        $question->save();
        return $question;
    }

    public function deleteQuestion($id){
        Question::where('id',$id)->delete();
    }
}
