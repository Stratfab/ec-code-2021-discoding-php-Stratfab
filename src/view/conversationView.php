<?php ob_start(); ?>



<div class="container-fluid">
    <div class="row">

        <?= $conversation_list_partial ?>

        <div class="col-sm-6 col-md-9 mt-2">
        
            
            <div class="row m-auto" >
                
                <h3><?= $interlocutor['username'] ?></h3>
                
                <div class=" d-flex search">
            <form class="form-inline ">
                <button class="btn btn-outline-success btn-sm my-2 my-sm-0 " type="submit">Search</button>
                <input class="col-md-4 form-control-search mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            </form>
            </div>

                <!-- div for scroll message  -->
              <div class="messageScroll">
    
              <!-- refresh div with jquery  with id="reload"-->
              <div id="reload">


                <?php foreach ($messages

                               as $message):
                    if ($message['user_id'] == $user_id) {
                        $msgUser = $user;
                    } else {
                        $msgUser = $interlocutor;
                    }
                    ?>

                    <div class="card flex-row flex-wrap">
                  
                        <div class="card-header" style="background-color: inherit;">
                            <?php
                            if ($msgUser['avatar_url']) {
                                $avatarUrl = $msgUser['avatar_url'];
                            } else {
                                $avatarUrl = "/static/lib/bootstrap-icons-1.5.0/person-fill.svg";
                            }
                            ?>
                            <img src="<?= $avatarUrl ?>" class="rounded-circle avatar mx-2"/>
                        </div>

                        <!-- messages send by loged user -->
                        <?php if   ($message['user_id'] == $user_id) : ?>
                        <div class="card-body">
                            
                            <div class="card-title d-flex">
                                <div class="flex-grow-1 fw-bold">
                                    <?= $msgUser['username'] ?>
                                </div>
                                <div class="text-muted fs-6">
                                <?= $message['created_at'] ?>
                                </div>  
                            </div>
                            <div class="card-text">
                                <?= $message['content'] ?>
                            </div>
                            <div class="d-flex justify-content-end">
                            <form method="POST" action="/index.php?action=conversation&sub_action=delete_message&conversation_id=<?= $conversation_id ?>">
                            <input type="hidden" value="<?= isset($message['id']) ? $message['id'] : '' ?>" name="id_message"/>
                        <button type="submit" name="delete"  class="close bi bi-x-square" aria-label="Close"></button>  
                            </form>
                            </div>
                        </div>

                        <!-- message send by interlocutors -->
                        <?php else:  ?>
                            <div class="card-body">
                            <div class="card-title d-flex">
                                <div class="flex-grow-1 fw-bold">
                                    <?= $msgUser['username'] ?>
                                </div>
                                <div class="text-muted fs-6">
                                    <?= $message['created_at'] ?>
                                </div>
                            </div>
                            <div class="card-text">
                                <?= $message['content'] ?>
                            </div>
                        </div>
                        <?php endif ?>
                    </div>
                <?php endforeach; ?>
            </div>
            </div>
            </div>
           
            
            <form class="d-flex mt-3" action="/index.php?action=conversation&sub_action=add_message&conversation_id=<?= $conversation_id ?>" method="post">
                <div class="flex-grow-1">
                    <input type="text" class="form-control" id="content" name="content"/>
                </div>
                <div class="mx-2">
                    <button id="sendMessage" type="submit" class="btn btn-secondary">Envoyer</button>
                </div>
            </form>
            
        </div>
    </div>
</div>

</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/static/js/page_conversation_detail.js"></script>


<?php $content = ob_get_clean(); ?>
<?php require('base.php'); ?>
