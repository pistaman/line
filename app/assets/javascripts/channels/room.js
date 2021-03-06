document.addEventListener('turbolinks:load', function () {
  App.room = App.cable.subscriptions.create({
    channel: "RoomChannel",
    room_id: $('#messages').data('room_id')
  },{
      connected: function () { console.log("connected OK"); },
      disconnected: function () { console.log("owata"); },
      received: function (data) {
        console.log(data['user_id']);
        $('#messages').append(data['message']);
      },
      speak: function (message) {
        return this.perform('speak', {
          message: message
        });
      }
    });

  $(document).on('keypress', '[data-behavior~=room_speaker]', function (event) {
    if (event.keyCode === 13) {
      App.room.speak(event.target.value);
      event.target.value = '';
      event.preventDefault();
    }
  });
});

