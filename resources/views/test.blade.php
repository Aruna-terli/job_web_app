
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Assignament</title>
	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<!-- Font-->
	<link rel="stylesheet" type="text/css" href="{{asset('css/roboto-font.css')}}">

  

	<!-- Main Style Css -->
    <link rel="stylesheet" href="{{asset('css/test.css')}}"/>
</head>
<body id="test_background">
<div class="questions-form">
<div class="container">
    <form action="{{ url('submit-answers') }}" method="POST">
        @csrf
        <input type="hidden" name="questions_count" value="{{ count($questions) }}">
        @foreach($questions as $question)
            <div class="question-block">
                <p class="question">{{ $loop->iteration }}. {{ $question->question }}</p>
                <div class="options">
                    @foreach(explode(',', $question->options) as $option)
                    <label class="option">
                       <input type="radio" name="answers[{{ $question->id }}]" value="{{ $option }}">
                       <span class="checkmark"></span> {{-- This is the custom checkmark circle --}}
                      {{ $option }}
                    </label>

                    @endforeach
                   
                </div>
            </div>
        @endforeach
        @error('answers')
                <div style="color:red">{{ $message }}</div>
            @enderror

        <button type="submit" class="submit-btn">Submit Answers</button>
    </form>
</div>
</div>
</body>
</html>
<script type="text/javascript">
        function disableBack() { window.history.forward(); }
        setTimeout("disableBack()", 0);
        window.onunload = function () { null };
    </script>
    

