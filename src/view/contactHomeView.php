<?php ob_start(); ?>

<div class="container-fluid d-flex h-100 ">
    <div class="row align-self-center w-100">
        <div class="col-md-4 mx-auto auth-container">
            <h3>Contact us !
            </h3>
            <p class="text-muted">Fill out the form for any questions</p>
            <form action="../index.php?action=contactHome" method="post">
                <div class="mb-3">
                    <label for="email" class="form-label text-muted small text-uppercase">Email</label>
                    <input type="email" class="form-control" id="email" name="email"/>
                </div>
                <div class="mb-3">
                    <label for="name" class="form-label text-muted small text-uppercase">Name</label>
                    <input type="name" class="form-control" id="name" name="name"/>
                </div>

                <div class="mb-3">
                    <label for="message" class="form-label text-muted small text-uppercase">Message</label>
                    <textarea class="form-control" placeholder="Leave your message here" id="message" name="message" style="height: 200px"></textarea>
                    
                </div>
                <span class="error-msg text-danger">
              <?= isset( $error_msg ) ? $error_msg : null; ?>
            </span>
            <span class="success-msg text-success">
              <?= isset($success_msg) ? $success_msg : null; ?>
            </span>
            
                <div class="d-flex justify-content-center">
                    <button  type="submit" class="btn btn-danger btn-lg btn-block w-100 sendButton">Send</button> 
                </div>
                <div class="d-flex justify-content-center">
                <a href="../index.php" type="submit"  class="btn btn-primary btn-lg btn-block w-100 loginButton" >Back</a>
                </div>
                
            </form>
        </div>
        
        
    </div>
</div>

<?php $content = ob_get_clean(); ?>
<?php require( __DIR__ . '/base.php'); ?>
