<?php ob_start(); ?>

<div class="container-fluid d-flex h-100 characterBackground">
    <div class="row align-self-center w-100">
        <div class="col-md-4 mx-auto auth-container">
            <h3>Welcome back!
            </h3>
            <p class="text-muted">We're so excited to see you again!</p>
            <form action="/index.php?action=login" method="post">
                <div class="mb-3">
                    <label for="email" class="form-label text-muted small text-uppercase">Email</label>
                    <input type="email" class="form-control" id="email" name="email"/>
                </div>

                <div class="mb-3">
                    <label for="password" class="form-label text-muted small text-uppercase">Password</label>
                    <input type="password" class="form-control" id="password" name="password"/>
                </div>

                <div class="mb-3">
                    
                <button type="submit"  class="btn btn-primary btn-lg btn-block w-100 loginButton" >Login</button>
                    <a href="index.php?action=signup" type="submit" class=" btn btn-secondary btn-lg btn-block w-100 signupButton">Create an account</a>
                    
                </div>
                <div class="d-flex justify-content-center">
                    <a href="index.php?action=contact" type="submit" class="btn btn-danger btn-lg btn-block w-50 contactButton">Contact us</a>
                </div>
            </form>
        </div>
        
    </div>
</div>

<?php $content = ob_get_clean(); ?>
<?php require( __DIR__ . '/base.php'); ?>
