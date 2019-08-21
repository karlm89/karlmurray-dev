<head>
    <title>@yield('title') | karlmurray.dev</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="#" type="image/x-icon" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
    <link rel="stylesheet" href="/css/app.css">
</head>

<body>
    <div class="container-fluid">
        <nav class="navbar fixed-top navbar-expand-lg navbar-light">
        <a class="navbar-brand" href="/">karlmurray.dev</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/projects">Projects</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/blog">Blog</a>
                </li>
                <!--<li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Dropdown
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">Dropdown Link</a>
                    </div>
                </li>-->
            </ul>
        </nav>
    </div>

    <div class="content">
        @yield('content')
    </div>
    
    <div class="footer-row">
        <div class="footer-row-item">
            <h4>Contact Info :</h4>
            <a href="tel:8324226129">(979)-645-0658</a><br>
            <a href="mailto:karl@karlmurray.dev">karl@karlmurray.dev</a> &nbsp;
        </div>
        <div class="footer-row-item">
            <h4>Quick Links :</h4>
            <a href="https://www.facebook.com/karlm89" target="_blank"><i class="fab fa-facebook-square"></i></a> &nbsp;
            <a href="https://www.instagram.com/karlm89/" target="_blank"><i class="fab fa-instagram"></i></a>&nbsp;
            <a href="https://twitter.com/karlplayswell" target="_blank"><i class="fab fa-twitter-square"></i></a>&nbsp;<br>
            <a href="https://www.linkedin.com/in/karl-murray-344409161/" target="_blank"><i class="fab fa-linkedin"></i></a>&nbsp;
            <a href="https://www.github.com/karlplayswell" target="_blank"><i class="fab fa-github-square"></i></a>&nbsp;
            <a href="https://freecodecamp.org/karlm89" target="_blank"><i class="fab fa-free-code-camp"></i></a>&nbsp;
        </div>
    </div>
    <footer>
        <div class="footer">
            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
            <div class="credit">&copy; 2019 karlmurray.dev</div>
        </div>
    </footer>
</body>