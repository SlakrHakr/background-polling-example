# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

App.room = App.cable.subscriptions.create { channel: "WebNotificationsChannel", environmentId: '12345' },
  received: (data) ->
    console.log data['message']
    $('#messages').append data['message']

App.room = App.cable.subscriptions.create { channel: "WebNotificationsChannel", environmentId: '67890' },
  received: (data) ->
    console.log data['message']
    $('#messages').append data['message']
