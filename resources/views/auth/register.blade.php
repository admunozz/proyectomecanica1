@extends('layouts.plantilla')

@section('contenido')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Register') }}</div>

                <div class="card-body">
                    <form method="POST" action="{{ route('register') }} "enctype="multipart/form-data" 
  >
                        @csrf
                        <div class="form-group row">
                            <label for="empleado" class="col-md-4 col-form-label text-md-right">Asignar empleado</label>

                            <div class="col-md-6">
                            <select name="empleado" id="empleado" data-livesearch="true" data-livesearch="true" required  autofocus >                                 
                            <option value="" disabled selected>Empleado:</option>
 @foreach($emp as $empl)
 <option value="{{$empl->id}}">{{$empl->nombre_completo}}</option>
 @endforeach
 </select>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="username" class="col-md-4 col-form-label text-md-right">{{ __('Username') }}</label>

                            <div class="col-md-6">
                                <input id="username" type="text" class="form-control @error('username') is-invalid @enderror" name="username" value="{{ old('name') }}" required autocomplete="username">

                                @error('username')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                     
  
                        <div class="form-group row">
                            <label for="Role" class="col-md-4 col-form-label text-md-right">Asignar rol</label>

                            <div class="col-md-6">
                            <select name="rol" id="rol" data-livesearch="true" data-livesearch="true" required>                                 
                            <option value="" disabled selected>Rol:</option>
 @foreach($roles as $rols)
 <option value="{{$rols->id}}">{{$rols->description}}</option>
 @endforeach
 </select>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" >

                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Password') }}</label>

                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">

                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password-confirm" class="col-md-4 col-form-label text-md-right">{{ __('Confirm Password') }}</label>

                            <div class="col-md-6">
                                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">
                            </div>
                        </div>
                     
                        <div class="form-group row">
                            <label for="avatar" class="col-md-4 col-form-label text-md-right">Subir avatar</label>

                            <div class="col-md-6">
                            <input type="file" name="avatar" id="avatarFile">                                 
                            </div>
                        </div>
                      
 
                        
                        
 <div class="form-group"> <br>
 <div class="col   offset-md-2" >
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Register') }}
                                </button>
                   
                        <button class="btn btn-danger" type="reset"  > Vaciar Campos
</button>
 
<a class="btn btn-info" type="reset" href="{{url('usuario')}}">  Regresar </a>
 </div>
 </div>
 
                       
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

