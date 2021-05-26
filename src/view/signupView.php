<?php ob_start(); ?>

<div class="container-fluid d-flex h-100 characterBackground">
    <div class="row align-self-center w-100">
        <div class="col-4 mx-auto auth-container">
            <h3>Hello Friend!
            </h3>
            <p class="text-muted">We would be happy to count you among our subscribers!</p>
            <form action="" method="post">
                <div class="mb-3">
                    <label for="email" class="form-label text-muted small text-uppercase">Email or Phone
                        number</label>
                    <input type="email" class="form-control" id="email" name="email"/>
                </div>

                <div class="mb-3">
                    <label for="username" class="form-label text-muted small text-uppercase">Username</label>
                    <input type="" class="form-control" id="username" name="username"/>
                </div>

                <div class="mb-3">
                    <label for="password" class="form-label text-muted small text-uppercase">Password</label>
                    <input type="password" class="form-control" id="password" name="password"/>
                </div>

                <div class="mb-3">
                    <label for="password_confirm" class="form-label text-muted small text-uppercase">Confirm Password</label>
                    <input type="password" class="form-control" id="password_confirm" name="password_confirm"/>
                </div>

                <div class="mb-3">
                    <button  id="submit" type="submit" class="btn btn-danger btn-lg btn-block w-100 loginButton">Validate</button>
                    
                </div>

                <div class="mb-3">
                    <a href="index.php?action=login" type="submit" class="btn btn-primary btn-lg btn-block w-100 loginButton">Login</a>
                    
                </div>
                <span class="error-msg" id="result">
              <?= isset( $error_msg ) ? $error_msg : ''; ?>
            </span>
            </form>
            
        </div>
        
    </div>
</div>

<?php $content = ob_get_clean(); ?>
<?php require( __DIR__ . '/base.php'); ?>
