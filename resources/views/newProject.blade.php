@extends('layouts.app')

@section('title', 'New Project')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Stvori novi projekt</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    <form method="post" action="/create">
                      <input type = "hidden" name = "_token" value = "<?php echo csrf_token(); ?>">
                        <div>
                            Naziv projekta: <input type="text" name="naziv_projekta"><br><br>
                            Opis projekta: <input type="text" name="opis_projekta"><br><br>
                            Cijena projekta: <input type="text" name="cijena_projekta"><br><br>
                            Obavljeni poslovi: <input type="text" name="obavljeni_poslovi"><br><br>
                            Datum početka: <input type="text" name="datum_pocetka"><br><br>
                            Datum završetka: <input type="text" name="datum_zavrsetka"><br><br>
                        </div>
                        <div>
                           <input type="submit" name="submit">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection('content')
