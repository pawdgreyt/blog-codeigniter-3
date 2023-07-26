<h2><?= $title; ?></h2>

<?php 
    echo validation_errors();
?>

<?php echo form_open_multipart('posts/create'); ?>
  <div class="form-group">
    <label for="title">Title</label>
    <input type="text" class="form-control" id="title" name="title" placeholder="Add Title">
  </div>
  <div class="form-group">
    <label for="body">Body</label>
    <textarea class="form-control" name="body" id="editor1" cols="30" rows="10"></textarea>
  </div>
  <div class="form-group">
    <label>Category</label>
    <select name="category_id" class="form-control">
        <?php foreach($categories as $category) : ?>
        <option value="<?= $category['id']?>"><?= $category['name']?></option>
        <?php endforeach ?>
    </select>
  </div>
  <div class="form-group">
    <label for="">Upload Image</label>
    <input type="file" name="userfile" size='20'>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>