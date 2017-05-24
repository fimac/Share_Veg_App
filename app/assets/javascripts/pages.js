console.log("eat vegetables");
// console.log(currentUser);
var getMessages = function (currentUser){
  $.ajax({
    url: '/users/' + currentUser + '/notifications',
    method: 'GET',
    dataType: 'JSON'
  }).done( function (){
    console.log("ajax win");
    // console.log(response);
    // console.log(response.getJSON());

  });
};

// request is going through ok, in browser I can click the xhr request which has the right url. I click on notifications and can see the data from messages in the console. But when I console log the response I get nothing. When I console log anything, i get nothing.arhghghghg

// which means if .done is not rendering anything there is something missing.
