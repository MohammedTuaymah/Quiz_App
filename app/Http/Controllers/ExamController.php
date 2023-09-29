<?php

namespace App\Http\Controllers;

use App\Models\Answer;
use App\Models\Question;
use App\Models\Quiz;
use App\Models\Result;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ExamController extends Controller
{
    public function create(){
        return view('backend.exam.create');
    }

    public function assignExam(Request $request){
        $quiz = (new Quiz)->assignExam($request->all());
        return redirect()->back()->with('message','Exam assigned to User Successfully!');
    }

    public function userExam(Request $request){
        $quizzes = Quiz::get();
        return view('backend.exam.index',compact('quizzes'));
    }

    public function removeExam(Request $request){
        $userId = $request->get('user_id');
        $quizId = $request->get('quiz_id');
        $quiz = Quiz::find($quizId);
        $result = Result::where('quiz_id',$quizId)->where('user_id',$userId)->exists();//check if quiz id in table equal to quiz id in form, user id also
        if($result){//if $result TRUE
            return redirect()->back()->with('message','This Quiz is Played By user so it cannot be Removed');
        }else{
            $quiz->users()->detach($userId);
            return redirect()->back()->with('message','Exam is not assigned to that user Now');
        }
    }

    public function getQuizQuestions(Request $request,$quizId){//get some details from quiz table, & questions and answers, and pass them to Vue, and component accept as a Browse
        $authUser = auth()->user()->id;

        //check if user has been assigned a particular quiz
        $userId = DB::table('quiz_user')->where('user_id',$authUser)->pluck('quiz_id')->toArray();
        if(!in_array($quizId, $userId)){//check if user not exist in array
            return redirect()->to('/home')->with('error','You are not assigned this exam');
        }

        $quiz = Quiz::find($quizId);
        $time = Quiz::where('id',$quizId)->value('minutes');//get the minutes of the Quiz 
        //dd($time);
        $quizQuestions = Question::where('quiz_id',$quizId)->with('answers')->get();//اسئلة الاختبار
        //return($quizQuestions);
        $authUserHasPlayedQuiz = Result::where(['user_id'=>$authUser,'quiz_id'=>$quizId])->get();

        //has user played particular quiz
        $wasCompleted = Result::where('user_id',$authUser)->whereIn('quiz_id',(new Quiz)->hasQuizAttempted())->pluck('quiz_id')->toArray();
        if(in_array($quizId,$wasCompleted)){//$quizId => coming from URL is In wasCompleted
            return redirect()->to('/home')->with('error','You already participated in this Exam');
        }

        return view('quiz',compact('quiz','time','quizQuestions','authUserHasPlayedQuiz'));
    }

    public function postQuiz(Request $request){
        $questionId= $request['questionId'];
        $answerId = $request['answerId'];
        $quizId = $request['quizId'];

        $authUser = auth()->user();

        return $userQuestionAnswer = Result::updateOrCreate(//https://laravel.com/docs/10.x/eloquent#upserts
            ['user_id'=> $authUser->id, 'quiz_id'=>$quizId, 'question_id'=>$questionId],
            ['answer_id'=>$answerId]
        );
    }

    public function viewResult($userId,$quizId){
        $results = Result::where('user_id',$userId)->where('quiz_id',$quizId)->get();
        return view('result-detail',compact('results'));
    }

    public function result(){
        $quizzes = Quiz::get();
        return view('backend.result.index',compact('quizzes'));
    }

    public function userQuizResult($userId,$quizId){
        $results = Result::where('user_id',$userId)->where('quiz_id',$quizId)->get();
        $totalQuestions = Question::where('quiz_id',$quizId)->count();//total assigned questions for each user
        //dd($totalQuestions);
        $attemptQuestion = Result::where('quiz_id',$quizId)->where('user_id',$userId)->where('question_id','!=',0)->count();//attempt Question by specific User
        //dd($attemptQuestion);
        
        $quiz = Quiz::where('id',$quizId)->get();

        //get the correct answer of the results
        $ans=[];
        foreach($results as $answer){
            array_push($ans,$answer->answer_id);//save all answer IDS in $ans array
        }
        $userCorrectedAnswer = Answer::whereIn('id',$ans)->where('is_correct',1)->count();
        //dd($userCorrectedAnswer);

        $userWrongAnswer = $totalQuestions - $userCorrectedAnswer;

        //if User attempt exam or not
        if($attemptQuestion){//if attempt
            $percentage = ($userCorrectedAnswer/$totalQuestions)*100;
        }else{
            $percentage=0;
            $userWrongAnswer=0;
        }

        return view('backend.result.result',compact('results','totalQuestions','attemptQuestion','userCorrectedAnswer','userWrongAnswer','percentage','quiz'));

    }
}
