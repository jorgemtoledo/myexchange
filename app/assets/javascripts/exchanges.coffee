$(document).ready ->
  $('#amount').keyup ->
    get_currency()
  $('#source_currency').change ->
    get_currency()
  $('#target_currency').change ->
    get_currency()
  $('#change_currency').click ->
    change_currency()

get_currency = ->
  if $('form').attr('action') == '/convert'
   $.ajax '/convert',
    type: 'POST'
    dataType: 'json'
    data: {
            source_currency: $("#source_currency").val(),
            target_currency: $("#target_currency").val(),
            amount: $("#amount").val()
          }
    error: (jqXHR, textStatus, errorThrown) ->
      alert textStatus
    success: (data, text, jqXHR) ->
      $('#result').val(data.value.toFixed(2))
  return false;

change_currency = ->
  current = $("#source_currency").val()
  $("#source_currency").val($("#target_currency").val())
  $("#target_currency").val(current)
get_currency()