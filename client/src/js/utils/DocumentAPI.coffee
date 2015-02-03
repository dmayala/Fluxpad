Actions = require '../actions/Actions'

module.exports =
  getDocumentData: ->
    data = JSON.parse localStorage.getItem 'document'
    Actions.receiveDocument data
