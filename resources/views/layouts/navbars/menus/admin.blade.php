<ul class="navbar-nav">
    @if(config('app.ordering'))
        <li class="nav-item">
            <a class="nav-link" href="/">
                <i class="ni ni-tv-2 text-primary"></i> {{ __('Dashboard') }}
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="javascript::void()">
                <i class="ni ni-circle-08 text-blue"></i> {{ __('Users') }}
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="javascript::void()">
                <i class="ni ni-single-copy-04 text-pink"></i> {{ __('Monitor') }}
            </a>
        </li>
		<li class="nav-item">
            <a class="nav-link" href="{{ route('pages.index') }}">
                <i class="ni ni-ungroup text-orange"></i> {{ __('Pages') }}
            </a>
        </li>
		<li class="nav-item">
            <a class="nav-link" href="{{ route('settings.index') }}">
                <i class="ni ni-settings text-info"></i> {{ __('Settings ') }}
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#navbar-Master" data-toggle="collapse" role="button" aria-expanded="false" aria-controls="navbar-Master">
                <i class="ni ni-hat-3 text-red"></i>
                <span class="nav-link-text">{{ __('Master') }}</span>
            </a>

            <div class="collapse" id="navbar-Master">
                <ul class="nav nav-sm flex-column">
                    <li class="nav-item">
                        <a class="nav-link" href="javascript::void">
                            <span class="nav-link-text">{{ __('Category') }}</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="javascript::void()">
                            <span class="nav-link-text">{{ __('Sub Category') }}</span>
                        </a>
                    </li>
                </ul>
            </div>
        </li>
    @endif
        {{--
        <li class="nav-item">
            <a class="nav-link" href="{{ route('settings.cloudupdate') }}">
                <i class="ni ni-cloud-download-95 text-blue"></i> {{ __('Updates') }}
            </a>
        </li>--}}
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
</ul>
