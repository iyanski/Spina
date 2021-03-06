class Spina.Scaffold

  @init = ->
    $(document).enhance()

  @enhance = (el) ->
    $el = $(el)

    $el.find('.infinite-pagination').infiniteScroll()

$.fn.enhance = () ->
  Spina.Scaffold.enhance(this)

$(document).on 'page:change', ->
  Spina.Scaffold.init()