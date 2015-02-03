Dispatcher = require('flux').Dispatcher

AppDispatcher = new Dispatcher()

AppDispatcher.handleAction = (action) ->
  @dispatch
    source: 'VIEW_ACTION'
    action: action

module.exports = AppDispatcher
