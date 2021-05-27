<?php ob_start(); ?>
<div class="col-sm-6 col-md-3 friends-list">
    <div>
    <a href="/index.php?action=logout" class="btn btn-outline-danger btn-sm logoutButtonHome">Logout</a>
    <a href="/index.php?action=contactHome" class="btn btn-outline-light btn-sm contactUsButtonHome">Contact</a>
    </div>
    <ul class="list-group mt-3 mb-3">
        <li class="list-group-item">
            <a href="/index.php?action=friend">
                <i class="bi-people-fill mx-2"></i>Friends
            </a>
        <div class=" d-flex search">
            <form class="form-inline ">
                <button class="btn btn-outline-success btn-sm my-2 my-sm-0 " type="submit">Search</button>
                <input class="col-md-4 form-control-search mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            </form>
        </div>
        </li>
    </ul>
    
    <div class="conversationScroll">
    <ul class="list-group border-0">
        <?php foreach ($conversations as $conv): ?>
            <li class="list-group-item border-0">

            <a href="/index.php?action=conversation&sub_action=detail&conversation_id=<?= $conv['id']; ?>"
                   class="list-group-item list-group-item-action border-0">
                    <?php
                    if ($conv['interlocutor_avatar_url']) {
                        $avatarUrl = $conv['interlocutor_avatar_url'];
                    } else {
                        $avatarUrl = "/static/lib/bootstrap-icons-1.5.0/person-fill.svg";
                    }
                    ?>
                    <img src="<?= $avatarUrl ?>" class="rounded-circle avatar-small mx-2"/>
                    <?= $conv['interlocutor_username']; ?>
                </a>
            </li>
        <?php endforeach; ?>
    </ul>
    </div>
</div>
<?php $conversation_list_content = ob_get_clean(); ?>
