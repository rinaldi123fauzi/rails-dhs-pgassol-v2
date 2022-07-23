# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $('#PriceItemsIndex').dataTable
    sPaginationType: "full_numbers"
    bJQueryUI: false
    scrollY: 300
    scrollX:  true
    bProcessing: true
    bServerSide: true
    sAjaxSource: $('#PriceItemsIndex').data('source')