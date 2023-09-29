<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Quiz extends Model
{
    use HasFactory;
    protected $fillable = [ 'name','description','minutes' ];

    //the quiz has many questions
    public function questions(){
    	return $this->hasMany(Question::class);
    }

    //the quiz belongs to many Users
    public function users(){
        return $this->belongsToMany(User::class, 'quiz_user');
    }

    public function storeQuiz($data){
        return Quiz::create($data);
    }

    public function allQuiz(){
        return Quiz::all();
    }

    public function getQuizById($id){
        return Quiz::find($id);
    }

    public function updateQuiz($data,$id){
        return Quiz::find($id)->update($data);
    }

    public function deleteQuiz($id){
        return Quiz::find($id)->delete();
    }

    public function assignExam($data){
        $quizId = $data['quiz_id'];//coming from the form
        $quiz = Quiz::find($quizId);
        $userId = $data['user_id'];//coming from the form
        return $quiz->users()->syncWithoutDetaching($userId);
    }

    public function hasQuizAttempted(){
        $attemptQuiz = [];//array
        $authUser = auth()->user()->id;
        $user = Result::where('user_id',$authUser)->get();//get data of the logged in user from Result table
        foreach($user as $u){
            array_push($attemptQuiz,$u->quiz_id);//add all the IDs quizzes from Result table of the loggedIn user to "attemptQuiz" array to display it
        }
        return $attemptQuiz;
    }


}
