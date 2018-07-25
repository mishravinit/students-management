@extends('voyager::master')

@section('page_title', 'Reports - Students Income')

@section('page_header')
    <h1 class="page-title">
        <i class="voyager-params"></i> Parameters <button name="hide-params" type="button" class="btn btn-light"><span name="hide-icon" class="icon voyager-double-up"></span></button>
    </h1>
@stop

@section('content')
    <div class="page-content browse container-fluid">
        <form id="form-enrolment-inout-params" action="{{ route('reports.enrollment-inout') }}" method="get">
            <div class="row" name="enrollment=params">
                <div class="col-md-12">
                    <div class="panel panel-bordered">
                        <div class="panel-body">
                            <div class="form-group  col-md-12">
                                <label for="type">Type</label>
                                <select class="form-control select2 select2-hidden-accessible" name="type" tabindex="-1" aria-hidden="true">
                                    <option value="income" {{ $type == 'income' ? 'selected' : '' }}>Income</option>
                                    <option value="outcome" {{ $type == 'outcome' ? 'selected' : '' }}>Outcome</option>
                                </select>
                            </div>
                            <div class="form-group  col-md-12">
                                <label for="institution">Institution</label>
                                <select class="form-control select2 select2-hidden-accessible" name="institution" tabindex="-1" aria-hidden="true">
                                    <option value="0">All</option>
                                    @foreach($institutions as $institution)
                                        <option value="{{ $institution['id'] }}">{{ $institution['name'] }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group col-md-12">
                                <label for="from">From</label>
                                <input type="date" class="form-control" name="from" placeholder="From" value="{{ $from->toDateString() }}">
                            </div>
                            <div class="form-group col-md-12">
                                <label for="to">To</label>
                                <input type="date" class="form-control" name="to" placeholder="To" value="{{ $to->toDateString() }}">
                            </div>
                            <div class="panel-footer">
                                {{ csrf_field() }}
                                <button type="submit" class="btn btn-primary">Confirm</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>

        <div class="row" name="enrollment-table" style="display: none;">
            <div class="col-md-12">
                <div class="panel panel-bordered">
                    <div class="panel-body">
                        <table class="table table-striped">
                            <thead class="thead-light">
                                <tr>
                                    <th class="font-weight-bold">Name</th>
                                    <th class="font-weight-bold">Institution</th>
                                    <th class="font-weight-bold" name="td-type">Income/Outcome</th>
                                </tr>
                            </thead>
                            <tbody name="enrollment-tbody">
                            </tbody>
                            <tfoot>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td name="total">&nbsp;</td>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop

@section('javascript')
    <script src="{{ asset('js/inout.js') }}"></script>
@stop