  var url_string = window.location.href
  var url = new URL(url_string);
  var dish_name = url.searchParams.get("name");

  console.log(gon.loc)

$(document).ready(function(){
  
  $("#filter").change(function(){
    console.log(gon.loc)
   $.ajax({
    url: '/search',
    type: 'GET',
    dataType: 'script',
    data: {filter: this.value, name: dish_name },
      success: function(repsonse){},
		});
  });

  $("#rating_filter").change(function(){
   
  $.ajax({
    url: '/search',
    type: 'GET',
    dataType: 'script',
    data: {ratingfilter: this.value, name: dish_name} ,
      success: function(repsonse){}
		});
  });


  $(".check_tagging").change(function(){
    
    var dishes = [];
    var dishes_list = [];
    $(':checkbox:checked').each(function(i){
      dishes[i] = $(this).attr("id");
      dishes_list[i] = $(this).attr("name");
    });


    var temp = "";
    for (var i=0; i< dishes_list.length; i++ ){
      temp += dishes_list[i] + ",  ";
    }
    
    $('#taggings_list').text(temp);

    if(dishes_list.length == 0){
      $('#taggings_list').text("ALL DIETARY REQUIREMENT"); 
    }
    
    $.ajax({
    url: '/search',
    type: 'GET',
    dataType: 'script',
    data: {taggingfilter: dishes, name: dish_name},
      success: function(repsonse){}
    });
  });

  var slider = $("#slider").slider({
    range: true,
    min: 0,
    max: 1000,
    values: [0, 1000],
    slide: function(event, ui) {
      $("#range_min").val(ui.values[0]);
      $("#range_max").val(ui.values[1]);
      var dishes_range_min = ui.values[0];
      var dishes_range_max = ui.values[1];
      
      $('#range_min').text(ui.values[0])
      $('#range_max').text(ui.values[1])
      $.ajax({
        url: '/search',
        type: 'GET',
        dataType: 'script',
        data: {min_rangefilter: dishes_range_min, max_rangefilter: dishes_range_max, name: dish_name },
          success: function(repsonse){}
      });
    }
  });
});

function initMap() {
  var map = new google.maps.Map(document.getElementById('map_block_div'),{
      center: {lat: 20.5937, lng: 78.9629} ,
      zoom: 5,
      });

  var location = gon.locations
    for(var i = 0 ; i < location.length; i++ ){
      var marker = new google.maps.Marker({
      position: {lat: location[i].latitude, lng: location[i].longitude},
      map: map,
      icon: {
        path: 'M22-48h-44v43h16l6 5 6-5h16z',
        fillColor: '#697f8c',
        fillOpacity: 1,
        strokeColor: '#FFFFFF',
        strokeWeight: 5,
        labelClass: "label", // the CSS class for the label
        }
      });  
    }
  }