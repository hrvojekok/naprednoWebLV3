@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Dashboard ||
                  @if (session('status'))
                      <div class="alert alert-success" role="alert">
                          {{ session('status') }}
                      </div>
                  @endif

                  You are logged in


                </div>

                <div class="card-body">


                    <div>
                      <?php
                        $projectNames = DB::table('projects')->pluck('naziv_projekta');
                        $size = sizeof($projectNames);
                        //echo($size);

                        for($i=0; $i<$size; $i++){
                          print_r($projectNames[$i]);
                          echo("<br>");
                        }
                      ?>
                    </div>


                    <div class="links"><br>
                        <a href="/newProject">Start a new project</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
