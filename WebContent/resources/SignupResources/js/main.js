
(function ($) {
    "use strict";

    /*==================================================================
    [ Focus Contact2 ]*/
    $('.input100').each(function(){
        $(this).on('blur', function(){
            if($(this).val().trim() != "") {
                $(this).addClass('has-val');
            }
            else {
                $(this).removeClass('has-val');
            }
        })    
    })


    /*==================================================================
    [ Validate after type ]*/
    $('.validate-input .input100').each(function(){
        $(this).on('blur', function(){
            if(validate(this) == false){
                showValidate(this);
            }
            else {
                $(this).parent().addClass('true-validate');
            }
        })    
    })

    /*==================================================================
    [ Validate ]*/
    var input = $('.validate-input .input100');

    $('.validate-form').on('submit',function(){
        var check = true;

        for(var i=0; i<input.length; i++) {
            if(validate(input[i]) == false){
                showValidate(input[i]);
                check=false;
            }
        }

        return check;
    });


    $('.validate-form .input100').each(function(){
        $(this).focus(function(){
           hideValidate(this);
           $(this).parent().removeClass('true-validate');
        });
    });

    function validate (input) {
 

        if($(input).attr('type') == 'email' || $(input).attr('name') == 'email') {
            if($(input).val().trim().match(/^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{1,5}|[0-9]{1,3})(\]?)$/) == null) {
                return false;
            }
        }
        else {
            if($(input).val().trim() == ''){
                return false;
            }
        }
// ________________________________________________________________________________________________________________


        if($(input).attr('name') == 'full_name') {
           
            var name = $('#fullname').val();
            if($(input).val().trim().match(/^([a-z']+(-| )?)+$/i) == null) {
                return false;
            }
        
            if(name.length<4){
                return false;
            }

            if($(input).val().trim() == ''){
            return false;
            }
           
        }
// ________________________________________________________________________________________________________________

        if($(input).attr('name') == 'password') {
   
           var pass = $('#pass').val();
		   if(pass.length<6 ||pass.length>20){
                return false;
           }
        }
// ________________________________________________________________________________________________________________
        if($(input).attr('name') == 'repeatpass') {
           
            var pass = $('#pass').val();
		    var confpass = $('#repeatpass').val();
            if(confpass != pass){
                 return false;
            }
        }
// ________________________________________________________________________________________________________________
        if($(input).attr('name') == 'mobile') {
   
        
           	var mobile_no= $('#mobileno').val();
            if(mobile_no.length != 10){
                return false;
            }
            if(isNaN(mobile_no)){
			    return false;
			}
        }
    }

    function showValidate(input) {
        var thisAlert = $(input).parent();

        $(thisAlert).addClass('alert-validate');
    }

    function hideValidate(input) {
        var thisAlert = $(input).parent();

        $(thisAlert).removeClass('alert-validate');
    }
    


})(jQuery);