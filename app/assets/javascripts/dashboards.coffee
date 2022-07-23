# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $('#ItemTable').dataTable
    sPaginationType: "full_numbers"
    bJQueryUI: false
    scrollY: 300
    scrollX:  true
    bProcessing: true
    bServerSide: true
    sAjaxSource: $('#ItemTable').data('source')

  $('#getItemsData').dataTable
    sPaginationType: "full_numbers"
    bJQueryUI: false
    scrollY: 300
    scrollX:  true
    bProcessing: true
    bServerSide: true
    sAjaxSource: $('#getItemsData').data('source')