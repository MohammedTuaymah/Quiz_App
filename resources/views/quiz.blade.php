@extends('layouts.app')

@section('content')

{{-- passing data --}}
<quiz-component
   :times ="{{$quiz->minutes}}"
   :quizId="{{$quiz->id}}"
   :quiz-questions = "{{$quizQuestions}}"
   :has-quiz-played ="{{$authUserHasPlayedQuiz}}"
   >


</quiz-component>

<script type="text/javascript">
   window.oncontextmenu = function (){
      console.log("right click disabled");
      return false;
   }
</script>

@endsection