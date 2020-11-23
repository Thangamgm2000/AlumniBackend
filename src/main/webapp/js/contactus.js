
(function ($) {
    "use strict";

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

function genMap() {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(success, fail);
      console.log("gen map called");
    } else {
      alert("Sorry, your browser does not support geolocation services.");
    }
  }
  
  function success(position) {
    console.log("success called");
    var lng = position.coords.longitude;
    var lat = position.coords.latitude;
    //   document.getElementById('lat').innerHTML = lat.toString(10);
    //   document.getElementById('lng').innerHTML = lng.toString(10);
    //Amrita Coordinates
    lat = 10.9027;
    lng = 76.9006;
    console.log(lng, lat);
    const map = new google.maps.Map(document.getElementById("google_map"), {
      center: { lat: lat, lng: lng },
      zoom: 16,
    });
    var myLatLng = {lat: lat, lng: lng};
    var marker = new google.maps.Marker({
      position: myLatLng,
      map: map,
      title: 'Alumni Place'
    });
  }
  
  function fail() {
    alert("Failed to load location information.");
  }