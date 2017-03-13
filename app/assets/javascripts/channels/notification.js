App.notification = App.cable.subscriptions.create({channel: "NotificationChannel", board_id: window.board_id},{
  connected: function() {
    console.log("NotificationChannel#Connected")
  },

  disconnected: function() {
    // Called when the subscription has been terminated by the server
  },

  received: function(data) {
    console.log("NotificationChannel#received")
    console.log(data);
    var post = JSON.parse(data);
    var message = "Yeni bir duyuru gonderildi: " + post.title
    toastr.info(message)
  }
});
