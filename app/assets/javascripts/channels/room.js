// document.addEventListener('turbolinks:load', function () {
//   App.room = App.cable.subscriptions.create({
//     channel: 'RoomChannel',
//     room_id: $('#messages').data('room_id')
//   }, {
//       connected: function () {
//         console.log('connected OK');
//       },
//       disconnected: function () { },
//       received: function (data) {
//         console.log('hogehoge');
//         // return $('#messages').append(data['message']);
//         return data
//       },
//       speak: function (message) {
//         return this.perform('speak', {
//           message: message
//         });
//       }
//     });

//   $('#messages').data['message'].forEach(function (element) {
//     console.log(element);
//   });

//   $(document).on('keypress blur', '#test', function (event) {
//     if (event.keyCode === 13) {
//       App.room.speak(event.target.value);
//       event.target.value = '';
//       event.preventDefault();
//     }
//   });
// });


document.addEventListener('turbolinks:load', function () {
  App.room = App.cable.subscriptions.create({
    channel: "RoomChannel",
    room_id: $('#messages').data('room_id')
  },{
      connected: function () { console.log("connected OK"); },
      disconnected: function () { console.log("owata"); },
      received: function (data) {
        console.log(data);
        erafojeagla;
        return $('#messages').append(data.message);
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