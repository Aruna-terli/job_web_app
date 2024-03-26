<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Assignament</title>
	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<!-- Font-->
	<link rel="stylesheet" type="text/css" href="{{asset('css/roboto-font.css')}}">
   <style>
    </style>
   

	<!-- Main Style Css -->
    <link rel="stylesheet" href="{{asset('css/test.css')}}"/>
</head>
<body id="result">
<div class="results-container">
    <h1>Assignment Completed</h1>
    <p>Thank you for completing the assignment. Here are your results:</p>
    <div class="results-details">
        <p>Total Questions: {{ $totalQuestions }}</p>
        <p>Correct Answers: {{ $correctAnswersCount }}</p>
    </div>
    @php
        $percentage = ($correctAnswersCount / $totalQuestions) * 100;
    @endphp

    <p class="percentage-score">You have scored a percentage of: {{ round($percentage, 2) }}%</p>
</div>
</body>
</html>
<script type="text/javascript">
        function disableBack() { window.history.forward(); }
        setTimeout("disableBack()", 0);
        window.onunload = function () { null };
    </script>
