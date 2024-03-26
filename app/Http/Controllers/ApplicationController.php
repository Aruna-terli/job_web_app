<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Validator;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use App\Models\Applicant; 
use File;
use Response;
use stdClass;
use Storage;
use Log;

class ApplicationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
    
        return view('application');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
 
       
       $data = $request->all();
         
           
        $validation = $request->validate([
           
            'first_name'=>'required',
            'last_name'=>'required',
            'gender'=>'required',
            'dob' => 'required|date_format:d/m/Y',
            'email'=>'required|email|unique:applicants',
            'phone_no'=>'required|digits:10|unique:applicants',
           'qualification'=>'required',
           'total_exp'=>'required',
            'roles'=>'required',
            'skills'=>'required'
        ]);
        // if ($validation->fails()) {
        //     // Handle failed validation
        //     return redirect('index')->withErrors($validation)->withInput();
        // }
        
        $applicant = new Applicant;
        $applicant->first_name = $data['first_name'];
        $applicant->last_name= $data['last_name'];
        $applicant->gender = $data['gender'];
        $applicant->dob =  Carbon::createFromFormat('d/m/Y',$data['dob'])->format('Y-m-d');
        $applicant->email =$data['email'];
        $applicant->phone_no= $data['phone_no'];
        $applicant->qualifications= $data['qualification'];
        $applicant->total_experience= $data['total_exp'];
        $applicant->role = $data['roles'];
        $applicant->skills= $data['skills'];
     
       $applicant->save();
       return redirect()->route('applicants.show', $applicant->id);
        
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        
        $result = Applicant::find($id);
       
       $skills = $result['skills'];
       $role = $result['role'];
       $questions = DB::table('questions')
               ->where('role_id', $role)
               ->whereIn('skill_id',$skills)
               ->get();
        
              return view('test')->with('questions',$questions);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
    public function submitAnswers(Request $request)
    {
        $validatedData = $request->validate([
            'answers' => 'required|array', 
            'answers.*' => 'required|string', 
            'questions_count' =>'required'
        ]);
        $userAnswers = $request->answers;
      
        $totalQuestions = $request['questions_count'];
        $correctAnswersCount = DB::table('questions')
                     
                     ->whereIn('answer',$userAnswers)
                     ->count();
                    
     return view('result', [
                        'correctAnswersCount' => $correctAnswersCount,
                        'totalQuestions' => $totalQuestions
                    ]);             
    }
}
