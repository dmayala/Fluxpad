AppDispatcher = require '../dispatcher/AppDispatcher'
Constants = require '../constants/Constants'

Actions =
  receiveDocument: (data) ->
    AppDispatcher.handleAction
      actionType: Constants.RECEIVE_DATA
      data: data

module.exports = Actions
