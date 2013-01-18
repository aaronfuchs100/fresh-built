 $(document).ready(function(){

    // cache container
    var $container = $('#design');
    // initialize isotope
    $container.isotope({
      // options...
    });

    // filter items when filter link is clicked
    $('#test').click(function(){
      var selector = $(this).attr('data-filter');
      $container.isotope({ filter: selector });
      return false;
    });
  });

