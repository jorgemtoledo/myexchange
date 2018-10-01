$(document).ready ->
  $('#quantity').keyup ->
    get_currency()
  $('#currency').change ->
    get_currency()
  $('#currency_destination').change ->
    get_currency()
  $('#change_currency').click ->
    change_currency()

get_currency = ->
  if $('form').attr('action') == '/exchange'
   $.ajax '/exchange',
    type: 'POST'
    dataType: 'json'
    data: {
            currency: $("#currency").val(),
            currency_destination: $("#currency_destination").val(),
            quantity: $("#quantity").val()
          }
    error: (jqXHR, textStatus, errorThrown) ->
      alert textStatus
    success: (data, text, jqXHR) ->
      $('#result').val(data.value)
  return false;

change_currency = ->
  current = $("#currency").val()
  $("#currency").val($("#currency_destination").val())
  $("#currency_destination").val(current)
get_currency()