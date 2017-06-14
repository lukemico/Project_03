var accessToken = window.location.hash.replace(/#access_token=/, "");

$(document).on("ready", function() {
  $.ajax({
    url: "/users/" + userID + "/add_token",
    data: {
      accessToken: accessToken
    },
    method: "POST",
    dataType: "JSON"
  }).done(function(data) {
    console.log("Code was added successfully");
  });
});
