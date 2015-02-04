React = require 'react'
DocumentStore = require '../stores/DocumentStore'

# components
DocumentSidebar = require './DocumentSidebar.react'

getState = ->
  documents: DocumentStore.getDocuments()

FluxpadApp = React.createClass

  getInitialState: -> getState()

  componentDidMount: ->
    DocumentStore.addChangeListener @_onChange

  componentWillUnmount: ->
    DocumentStore.removeChangeListener @_onChange

  _onChange: -> @setState getState()

  render: ->
    documents = @state.documents

    <DocumentSidebar documents={documents} />

module.exports = FluxpadApp
