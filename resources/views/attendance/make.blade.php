@extends('voyager::master')

@section('page_title', 'Make daily attendance')

@section('javascript')
    <script src="{{ asset('js/attendance.make.js') }}"></script>
@stop

@section('content')
    <div class="page-content browse container-fluid">
        <form name="attendance" action="{{ route('attendance.make') }}" method="post">
            <div class="row" name="attendance=params">
                <div class="col-md-12">
                    <div class="panel panel-bordered">
                        <div class="panel-body">
                            <div class="form-group  col-md-12">
                                <label for="institution">Institution</label>
                                <select class="form-control select2 select2-hidden-accessible" name="institution" tabindex="-1" aria-hidden="true">
                                    @foreach($institutions as $institution)
                                        <option value="{{$institution->id}}">{{$institution->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="class">Class</label>
                                <select class="form-control select2 select2-hidden-accessible" name="class" tabindex="-1" aria-hidden="true">
                                    @foreach($institution->classes as $klass)
                                        <option value="{{$klass->id}}">{{$klass->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group col-md-12">
                                <label for="attendance_day">To</label>
                                <input type="date" class="form-control" name="attendance_day" placeholder="Day" value="{{ $day->toDateString() }}">
                            </div>
                            <div class="form-group col-md-12">
                                <table class="table table-striped">
                                    <thead class="thead-light">
                                    <tr>
                                        <th class="font-weight-bold"><input type="checkbox" name="check_all"></th>
                                        <th class="font-weight-bold">Name</th>
                                    </tr>
                                    </thead>
                                    <tbody name="attendance-tbody">
                                    @foreach($klass->students as $student)
                                        <tr>
                                            <td><input type="checkbox" name="students" value="{{ $student->id }}"></td>
                                            <td>{{ $student->name }}</td>
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>
                            </div>
                            <div class="panel-footer">
                                {{ csrf_field() }}
                                <button disabled type="submit" class="btn btn-primary">Confirm</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
@stop