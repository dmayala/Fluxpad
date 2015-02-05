React = require 'react'
DocumentStore = require '../stores/DocumentStore'

# components
DocumentSidebar = require './DocumentSidebar.react'

getState = ->
  documents: DocumentStore.getDocuments()
  selectedDocument: DocumentStore.getSelected()

FluxpadApp = React.createClass

  getInitialState: -> getState()

  componentDidMount: ->
    DocumentStore.addChangeListener @_onChange

  componentWillUnmount: ->
    DocumentStore.removeChangeListener @_onChange

  _onChange: -> @setState getState()

  render: ->
    documents = @state.documents
    selected = @state.selectedDocument

    (
      <div>
        <DocumentSidebar documents={documents} />
        <p>{ documents[selected].data }</p>
      </div>
    )

module.exports = FluxpadApp
