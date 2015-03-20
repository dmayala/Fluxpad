AppDispatcher = require '../dispatcher/AppDispatcher'
EventEmitter = require('events').EventEmitter
Constants = require '../constants/Constants'
_ = require 'underscore'

_documents = [{"title":"Test 1","data":"Lorem onesum","author":"Me"},{"title":"Test 2","data":"Lorem twosum","author":"Me"},{"title":"Test 3","data":"Lorem threesum","author":"Me"}]
_selectedIndex = 0

loadDocumentData = (data) -> _documents = data
setCurrent = (data) -> _selectedIndex = data

DocumentStore = _.extend {}, EventEmitter::,
  getDocuments: -> _documents
  getSelected: -> _selectedIndex

  emitChange: -> @emit 'change'
  addChangeListener: (cb) -> @on 'change', cb
  removeChangeListener: (cb) -> @removeListener 'change', cb

AppDispatcher.register (payload) ->
  action = payload.action

  switch action.actionType
    when Constants.RECEIVE_DATA then loadDocumentData(action.data)
    when Constants.SET_CURRENT_DOCUMENT then setCurrent(action.data)
    else return true

  DocumentStore.emitChange()
  return true

module.exports = DocumentStore
