console.log("hello world");

$.ajax({
    url: "/items",
    method: "GET",
    dataType: "JSON"
  }).done(function(response){
    console.log(response);
  });
