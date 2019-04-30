<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Http\Requests;
use App\Http\Controllers\Controller;


class TeamController extends Controller {

  public function insertformTeam() {

      return view('projectTeam');
  }

  public function insertTeam (Request $request) {

      $user_id = $request->input('user_id');
      $project_id = $request->input('project_id');

      $data = array('user_id'=>$user_id, "project_id"=>$project_id);

      DB::table('administration')->insert($data);
      //echo "Project inserted successfully.<br/>";
      //echo '<a href = "/home">Click Here</a> to go back.';
      return redirect()->to('/home');

  }
}
