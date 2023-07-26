<h2><?= $title; ?></h2>

<?php 
    echo validation_errors();
?>

<?php echo form_open('posts/update'); ?>
    <input type="hidden" name="id" value="<?= $post['id']?>">
  <div class="form-group">
    <label for="title">Title</label>
    <input type="text" class="form-control" id="title" name="title" placeholder="Add Title" value="<?= $post['title']?>">
  </div>
  <div class="form-group">
    <label for="body">Body</label>
    <textarea class="form-control" name="body" id="editor1" cols="30" rows="10"><?= $post['body']?></textarea>
  </div>
  <div class="form-group">
    <label>Category</label>
    <select name="category_id" class="form-control">
        <?php foreach($categories as $category) : ?>
        <option value="<?= $category['id']?>" <?php if($post['category_id'] == $category['id']) {echo 'selected';} ?>><?= $category['name']?></option>
        <?php endforeach ?>
    </select>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>