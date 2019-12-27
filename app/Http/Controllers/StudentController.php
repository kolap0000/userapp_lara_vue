<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Student;

class StudentController extends Controller
{
   public function index(Request $request)
    {
        //return Student::all();
        
        if ( $request->input('client') ) {
            return Student::select('id', 'firstname', 'lastname', 'address')->get();
        }

        $columns = ['id','firstname', 'lastname', 'address'];

        $length = $request->input('length');
        $column = $request->input('column'); //Index
        $dir = $request->input('dir');
        $searchValue = $request->input('search');
        $query = Student::select('id', 'firstname', 'lastname', 'address')->orderBy($columns[$column], $dir);


        if ($searchValue) {
            $query->where(function($query) use ($searchValue) {
                $query->where('firstname', 'like', '%' . $searchValue . '%')
                ->orWhere('lastname', 'like', '%' . $searchValue . '%')
                ->orWhere('address', 'like', '%' . $searchValue . '%');
            });
        }
        $students = $query->paginate($length);
        return ['data' => $students, 'draw' => $request->input('draw')];

    }
 
    public function show($id)
    {
        return Student::find($id);
    }

    public function store(Request $request)
    {   
        //dd($request->all());
        return Student::create($request->all());
    }

    public function update(Request $request, $id)
    {
        $student = Student::findOrFail($id);
        $student->update($request->all());

        return $student;
    }

    public function delete(Request $request, $id)
    {
        $student = Student::findOrFail($id);
        $student->delete();

        return 204;
    }
}
