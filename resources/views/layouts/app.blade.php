<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>@yield('title', 'Aplikasi Perjadin')</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        
        #sidebar {
            width: 250px;
            height: 100vh;
            position: fixed;
            top: 0;
            left: 0;
            transition: all 0.2s;
            z-index: 1000;
            background-color: #343a40;
            color: white;
            overflow-x: hidden;
            display: flex;
            flex-direction: column;
        }

        .sidebar-fixed {
            position: sticky;
            top: 0;
            z-index: 1000;
            background-color: #343a40;
        }

        .sidebar-scroll {
            flex-grow: 1;
            overflow-y: auto;
            max-height: calc(100vh - 180px);
        }

        .sidebar-scroll::-webkit-scrollbar {
            width: 0px;
            background: transparent;
            display: none;
        }

        #sidebar.active {
            width: 80px;
        }

        #content {
            width: calc(100% - 250px);
            min-height: 100vh;
            transition: all 0.2s;
            position: absolute;
            top: 0;
            right: 0;
        }

        #content.active {
            width: calc(100% - 80px);
        }

        #sidebarCollapse {
            width: 100%;
            padding: 10px 0;
            margin-bottom: 10px;
            background-color: #23272b;
            border: none;
            color: white;
            transition: all 0.2s;
        }

        #sidebarCollapse:hover {
            background-color: #1d2124;
        }

        #sidebar.active #sidebarCollapse {
            width: 60px;
            margin: 10px ;
        }

        #sidebar.active .sidebar-fixed {
            width: 80px;
        }

        #sidebarCollapse i {
            display: block;
            margin: 0 auto;
        }

        #sidebar.active .sidebar-header h3,
        #sidebar.active .CTAs {
            display: none;
        }

        #sidebar.active .sidebar-header strong {
            display: block;
        }

        #sidebar ul li a {
            text-align: left;
        }

        #sidebar.active ul li a {
            padding: 20px 10px;
            text-align: center;
            font-size: 0.85em;
        }

        #sidebar.active ul li a i {
            margin-right:  0;
            display: block;
            font-size: 1.8em;
            margin-bottom: 5px;
        }

        #sidebar.active ul ul a {
            padding: 10px !important;
        }

        #sidebar .sidebar-header strong {
            display: none;
        }
        
        #sidebar.active .sidebar-header h3 {
            display: none;
        }
        
        #sidebar.active .sidebar-header strong {
            display: block;
        }

        #sidebar .sidebar-header {
            padding: 15px 0;
            background-color: #23272b;
            text-align: center;
        }

        #sidebar .sidebar-header img {
            width: 60px;
            height: 60px;
            border-radius: 50%;
            margin: 0 auto 10px;
            display: block;
        }

        #sidebar.active .sidebar-header {
            padding: 10px 0;
        }

        #sidebar.active .sidebar-header img {
            width: 40px;
            height: 40px;
            margin: 0 auto 5px;
        }

        #sidebar.active .sidebar-header h3 {
            display: none;
        }

        #sidebar .sidebar-header h3 {
            margin-bottom: 0;
            display: block;
            font-size: 2rem;
        }

        #sidebar ul.components {
            padding: 20px 0;
        }

        #sidebar ul li a {
            padding: 10px 20px;
            font-size: 1.1em;
            display: block;
            color: white;
            text-decoration: none;
        }

        #sidebar ul li a:hover {
            background-color: #23272b;
        }


        .sidebar-scroll ul.components li a {
            font-size: 18px;
        }

        .sidebar-scroll ul.components li a i {
            font-size: 20px;
            margin-right: 8px;
        }


        #sidebar::-webkit-scrollbar {
            display: none;
        }

        @media (max-width: 768px) {
            #sidebar {
                width: 80px;
            }
            #sidebar.active {
                width: 250px;
            }
            #content {
                width: calc(100% - 80px);
            }
            #content.active {
                width: calc(100% - 250px);
            }
        }

        .sidebar-dropdown .dropdown-toggle::after {
            display: none;
        }
        
        .sidebar-dropdown .dropdown-menu {
            background-color: #343a40;
            border: none;
            margin-top: 0;
            padding: 0;
        }
        
        .sidebar-dropdown .dropdown-item {
            color: white;
            padding: 10px 20px 10px 40px;
        }
        
        .sidebar-dropdown .dropdown-item:hover {
            background-color: #23272b;
        }

        #sidebar.active .sidebar-dropdown .dropdown-menu {
            position: absolute;
            left: 100%;
            top: 0;
        }

        #sidebar.active .sidebar-dropdown .dropdown-toggle {
            position: relative;
        }

        #sidebar.active .sidebar-dropdown .dropdown-toggle::after {
            position: absolute;
            top: 50%;
            right: 10px;
            transform: translateY(-50%);
        }

        #sidebar.active .dropdown-container {
        position: absolute;
        left: 100%;
        top: 0;
        width: 200px;
        opacity: 0;
        visibility: hidden;
        transition: all 0.3s;
        }  

        #sidebar.active .sidebar-dropdown:hover .dropdown-container {
        opacity: 1;
        visibility: visible;
        }

    </style>
    @yield('styles')
</head>
<body>
    <div class="d-flex">

        <nav id="sidebar" class="@if(isset($_COOKIE['sidebar_collapsed']) && $_COOKIE['sidebar_collapsed'] === 'true') active @endif">
            <div class="sidebar-fixed">
                <div class="sidebar-header">
                    <img src="{{ asset('img/logo bmkg no text.webp') }}" alt="Logo">
                    <h3>SIPANAS</h3>
                </div>

                <button type="button" id="sidebarCollapse" class="btn">
                    <i class="fas fa-solid fa-bars"></i>
                </button>
            </div>


            <div class="sidebar-scroll">
        <ul class="list-unstyled components">
        <li>
            <a href="{{ route('home') }}">
                <i class="fas fa-home"></i> 
                <span>Home</span>
            </a>
        </li>
        <li>
            <a href="{{ route('pegawai.index') }}">
                <i class="fas fa-user"></i> 
                <span>Pegawai</span>
            </a>
            </li>
            <li>
        <a href="{{ route('SBM.upload') }}">
            <i class="fas fa-hotel"></i> 
            <span>Upload SBM</span>
        </a>
    </li>
        <li>
            <a href="{{ route('kegiatan.index') }}">
            <i class="fas fa-tasks"></i> 
            <span>Kegiatan</span>
            </a>
            </li>
        <li class="sidebar-dropdown">
            <a href="#">
                <i class="fas fa-envelope"></i> <span>Perjadin</span>
                <i class="fa fa-caret-down"></i>
            </a>
            <div class="dropdown-container">
                <a href="{{ route('perjadin.index') }}">
                    <i class="fas fa-solid fa-file-invoice"></i>
                    <span>Rencana</span>
                </a>
                <a href="{{ route('realisasi.index') }}">
                    <i class="fas fa-solid fa-file-invoice"></i>
                    <span>Realisasi</span>
                </a>
            </div>
        </li>
    </ul>
</div>        
</nav> 


        <div id="content" class="@if(isset($_COOKIE['sidebar_collapsed']) && $_COOKIE['sidebar_collapsed'] === 'true') active @endif">
            @yield('content')
        </div>

    </div>
    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        $(document).ready(function () {
        $('#sidebarCollapse').on('click', function () {
        $('#sidebar').toggleClass('active');
        $('#content').toggleClass('active');
        
        // Save sidebar state to cookie
        var isCollapsed = $('#sidebar').hasClass('active');
        document.cookie = "sidebar_collapsed=" + isCollapsed + ";path=/";

        // Toggle visibility of text next to icons
        $('#sidebar ul li a span').toggleClass('d-none');
    });

    // Check cookie on page load
    var sidebarCollapsed = document.cookie.replace(/(?:(?:^|.*;\s*)sidebar_collapsed\s*\=\s*([^;]*).*$)|^.*$/, "$1");
    if (sidebarCollapsed === 'true') {
        $('#sidebar').addClass('active');
        $('#content').addClass('active');
        $('#sidebar ul li a span').addClass('d-none');
    }

    // Dropdown functionality
    $('.sidebar-dropdown > a').on('click', function(e) {
        e.preventDefault();
        var $this = $(this);
        var $parent = $this.parent();
        var $dropdownContainer = $this.next('.dropdown-container');

        if ($('#sidebar').hasClass('active')) {
            // If sidebar is collapsed, show dropdown on hover (handled by CSS)
            return;
        }

        // Close other open dropdowns
        $('.sidebar-dropdown').not($parent).removeClass('active');
        $('.dropdown-container').not($dropdownContainer).slideUp(300);
        $('.fa-caret-down').not($this.find('.fa-caret-down')).removeClass('rotate');

        // Toggle current dropdown
        $parent.toggleClass('active');
        $dropdownContainer.slideToggle(300);
        $this.find('.fa-caret-down').toggleClass('rotate');
    });

    // Close dropdown when clicking outside
    $(document).on('click', function(e) {
        if (!$(e.target).closest('.sidebar-dropdown').length && !$('#sidebar').hasClass('active')) {
            $('.sidebar-dropdown').removeClass('active');
            $('.dropdown-container').slideUp(300);
            $('.fa-caret-down').removeClass('rotate');
        }
    });
});
    </script>
    @yield('scripts')
</body>
</html>