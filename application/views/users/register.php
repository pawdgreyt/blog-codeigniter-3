<?php echo validation_errors(); ?>

<?php echo form_open('users/register'); ?>
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <h1 class="text-center"><?= $title ?></h1>
            <div class="form-group">
                <label for="">Name</label>
                <input type="text" name="name" class="form-control" placeholder="Name">
            </div>
            <div class="form-group">
                <label for="">Zip Code</label>
                <input type="text" name="zipcode" class="form-control" placeholder="Zip Code">
            </div>
            <div class="form-group">
                <label for="">Email</label>
                <input type="email" name="email" class="form-control" placeholder="Email">
            </div>
            <div class="form-group">
                <label for="">Username</label>
                <input type="text" name="username" class="form-control" placeholder="Username">
            </div>
            <div class="form-group">
                <label for="">Password</label>
                <input type="password" name="password" class="form-control" placeholder="Password">
            </div>
            <div class="form-group">
                <label for="">Confirm Password</label>
                <input type="password" name="password2" class="form-control" placeholder="Confirm Password">
            </div>
            <button type="submit" class="btn btn-primary btn-block">Submit</button>
        </div>
    </div>
    
<?php echo form_close(); ?>