<h2><?=  $post['title']; ?></h2>

<div class="post-body">
    <small class="post-date">Posted on: <?= $post['created_at']?></small><br>
    <div class="row">
        <div class="col-md-3">
            <img src="<?php echo site_url();?>assets/images/posts/<?= $post['post_image'] ?>" style="width:100%">
        </div>
    </div>
    <br>
    <?= $post['body'] ?>
</div>

<?php if($this->session->userdata('user_id') == $post['user_id']) : ?>
    <hr>
    <a class="btn btn-default pull-left" style='margin-right:5px;' href="<?php echo base_url(); ?>posts/edit/<?= $post['slug']?>">Edit</a>
    <?php echo form_open('/posts/delete/'.$post['id']); ?>
        <input type="submit" value="Delete" class="btn btn-danger">
    </form>
<?php endif; ?>

<hr>
<h3>Comments</h3>
<?php if($comments) : ?>
    <?php foreach($comments as $comment) : ?>
        <div class="well">
            <h5><?php echo $comment['body'] ?> [ by <strong><?= $comment['name'] ?></strong> ]</h5>
        </div>
    <?php endforeach; ?>
<?php else : ?>
    <p>No Comments to display.</p>
<?php endif; ?>
<hr>
<h3>Add Comment</h3>
<?php 
    echo validation_errors();
?>
<?php echo form_open('comments/create/'.$post['id']); ?>
    <div class="form-group">
        <label for="">Name</label>
        <input type="text" name="name" class="form-control">
    </div>
    <div class="form-group">
        <label for="">Email</label>
        <input type="text" name="email" class="form-control">
    </div>
    <div class="form-group">
        <label for="">Body</label>
        <textarea class="form-control" name="body" cols="30" rows="10"></textarea>
    </div>
    <input type="hidden" name="slug" value="<?= $post['slug'] ?>">
    <button class="btn btn-primary" type="Submit">Submit</button>
</form>