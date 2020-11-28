$(document).ready(function() {    
    
    var readURL = function(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            var data = new FormData();
			
            reader.onload = function (e) {
                $('.avatar').attr('src', e.target.result);
                
            }
            reader.readAsDataURL(input.files[0]);
            $('#imageForm').submit();
            
        }
    }
    var getUrlParams = function()
    {
        const queryString = window.location.search.substring(1);
        params = {}
        queryString.split('&').forEach(function (queries)
        {
            key_value = queries.split('=');
            params[key_value[0]] = params[key_value[1]];
        })
        return queryString
    }

    var validateUser = function()
    {
        if (sessionStorage.getItem('rollno') == null)
        {
            return false;
        }
        userroll = sessionStorage.getItem('rollno')
        profileroll = getUrlParams['rollno']
        if(userroll!=profileroll)
        {
            return false;
        }
        return true;
    }

    if (validateUser())
    {
        console.log(getUrlParams())
        $('button').hide();
    }
    var editButtons = $('button[name ="edit-button"]')
    var saveButtons = $('button[name ="save-button"]')
    var resetButtons = $('button[name ="reset-button"]')
    var cancelButtons = $('button[name ="cancel-button"]');
    $('#imageForm').ajaxForm({
        success: function(msg) {
            alert("File has been uploaded successfully");
        },
        error: function(msg) {
            $("#upload-error").text("Couldn't upload file");
        }
    });
    $(':input').attr('readonly','readonly');
    saveButtons.hide()
    resetButtons.hide();
    cancelButtons.hide();
    editButtons.click(function(){
        $(':input').prop("readonly", false);
        saveButtons.show();
        resetButtons.show();
        cancelButtons.show();
        editButtons.hide();
      });
      saveButtons.click(function(){
        $(':input').prop("readonly", false);
      });
    
    $(".file-upload").on('change', function(){
        readURL(this);
    });

    $("body").on('click', '.panel[data-href]', function(){
        $($(this).data('href')).modal();
    });
    jQuery.validator.addMethod("properbatch", function(value, element) {
        return this.optional(element) || /[2][0]\d{2}-[2][0]\d{2}/.test(value);
    }, "* Amount must be greater than zero");

    $("#academicForm").validate({
        // Specify validation rules
        rules: {
          // The key name on the left side is the name attribute
          // of an input field. Validation rules are defined
          // on the right side
          academicBatch: "properbatch",
          cgpa: {
              number: true,
              max: 10
          }
        },
        // Specify validation error messages
        messages: {
            academicBatch: "Please enter correct batch (20xx-20xx)",
          cgpa: "Enter a valid cgpa between 0 to 10"
        },
        // Make sure the form is submitted to the destination defined
        // in the "action" attribute of the form when valid
        submitHandler: function(form) {
          form.submit();
        }
      });

    
});



