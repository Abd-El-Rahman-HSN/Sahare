// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require rails-ujs
//= require turbolinks
//= require cocoon
//= require_tree .

$('a[data-popup]').live('click', function(e) { 
      window.open( $(this).attr('href'), "Popup", "height=600, width=600" ); 
      e.preventDefault(); 
    });

    

function remove_fields(link) {
      $(link).previous("input[type=hidden]").value = "1";
      $(link).up(".fields").hide();
    }
    
    function add_fields(link, association, content) {
      var new_id = new Date().getTime();
      var regexp = new RegExp("new_" + association, "g")
      $(link).up().insert({
        after: content.replace(regexp, new_id)
      });
    }