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
        <div id="main-region" className="col-xs-12 maxheight">{ documents[selected].data }</div>
      </div>
    )

module.exports = FluxpadApp
