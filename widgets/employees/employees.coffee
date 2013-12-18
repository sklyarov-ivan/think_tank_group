class Dashing.Employees extends Dashing.Widget
  ready: ->
    if @get('unordered')
      $(@node).find('ol').remove()
    else
      $(@node).find('ul').remove()
    $.each $('.karma'), (itemID,item) ->
      hItem = $(item)
      karma = parseFloat(hItem.html())
      if (karma>0)
        hItem.addClass('goodValue');
      else
        hItem.addClass('badValue');
  onData: (data) ->
    $.each $('.karma'), (itemID,item) ->
      hItem = $(item)
      karma = parseFloat(hItem.html())
      if (karma>0)
        hItem.addClass('goodValue');
      else
        hItem.addClass
