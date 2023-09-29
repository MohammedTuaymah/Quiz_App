@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">

        <div class="col-md-8">
            <center><h1>Your Result</h1></center>
        @foreach($results as $key=>$result)
            <div class="card">
                <div class="card-header">{{$key+1}}{{-- Result --}}</div>
                

               
                <div class="card-body">
                    <p><strong>{{$result->question->question ?? ''}}</strong></p>{{-- there is relationship between Result and question tables --}}
                    
                    @php
                    $i=1;
                        $answers = DB::table('answers')->where('question_id',$result->question_id)->get();
                        foreach($answers as $ans){
                            echo '<p>'.$i++.')'.$ans->answer.'</p>';
                        }
                    @endphp
                    
                    <p>Your answer:{{$result->answer->answer ?? ''}}</p>{{-- there is relationship between Result and Answers tables --}}

                    @php
                        $correctAnswers= DB::table('answers')->where('question_id',$result->question_id)->where('is_correct',1)->get();
                        foreach($correctAnswers as $ans){
                            echo"Correct Answer:".'<b>'.$ans->answer.'</b>';
                        }
                    @endphp

                    @if($result->answer->is_correct ?? ''){{-- RelationShip here is about answer_id column in result table --}}

                    <p>
                        <strong class="text-success">Result:Correct</strong>
                    </p>
                    @else
                    <p>
                        <strong class="text-danger">Result:Incorrect</strong>
                    </p>
                    @endif
                    
                  
                </div>
               
            </div>

        @endforeach
        </div>
    </div>
</div>
@endsection
