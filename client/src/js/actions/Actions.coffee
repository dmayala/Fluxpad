AppDispatcher = require '../dispatcher/AppDispatcher'
Constants = require '../constants/Constants'

Actions =
  receiveDocument: (data) ->
    AppDispatcher.handleAction
      actionType: Constants.RECEIVE_DATA
      data: data
  setCurrentDocument: (data) ->
    AppDispatcher.handleAction
      actionType: Constants.SET_CURRENT_DOCUMENT
      data: data

module.exports = Actions
