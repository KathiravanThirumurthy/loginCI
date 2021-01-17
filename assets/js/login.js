$(document).ready(function(){

 
/*$('#login_btn').click(function(){

        var emailvalue=$('#email').val();
        var password=$('#pass').val();
        var selectedUser=$('#select').val();
        
         if (emailvalue.length == 0 || selectedUser !="admin") {
         	//alert("Empty");
         	return false;
         }else
         {
         	//alert("Submitted");

         	return true;
         }
        
                
    });*/

    $('#login_btn').click(function(e){
    	e.preventDefault();  
		var emailvalue=$('#email').val();
		var selectedUser=$('#select').val();
		var url="<?php echo base_url();?>";
		
		$.ajax({
                        url:"submit",
                        
                         method: 'POST',
                        data: {email: emailvalue,usertype:selectedUser},
                        //dataType: 'json',
                        success: function(data) {
				            alert('Thanks for your feedback from save.js!');
				            // $("#form").html("<p>Thank you</p>");
				           // alert(data);
				             //$("#myModal").html(data);
    						 $("#myModal").modal('show');
				        },
				        error: function(data) {
				        	alert(data);
				            alert("Error from save.js");
				        }
                    });
    });

        

}); 