<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
  <script type = 'text/javascript' src = "<?php echo base_url();?>assets/js/login.js"></script> 
<!-- <form method="post" action="submit"> -->
<form method="post" >
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" name="email" id="email" aria-describedby="emailHelp" placeholder="Enter email">
   
  </div>
  
  <div class="form-group">
    <label for="exampleFormControlSelect1">Example select</label>
    <select class="form-control" id="select" name="usertype">
      <option>admin</option>
      <option>normaluser</option>
      <option>autorised</option>
      
    </select>
  </div>
  
  <button type="submit" class="btn btn-primary" id="login_btn">Submit</button>
 
      
</form>

  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
          <p>Data Successfully updated</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal" onClick="location.reload();">Close</button>
        </div>
      </div>
      
    </div>
  </div>