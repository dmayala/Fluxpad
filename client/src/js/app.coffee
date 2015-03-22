React = require 'react'

DocumentData = require './DocumentData'
DocumentAPI = require './utils/DocumentAPI'
FluxpadApp = require './components/FluxpadApp.react'

# DocumentData.init()

# DocumentAPI.getDocumentData()

React.render(
  <FluxpadApp />,
  document.getElementById 'flux-pad'
)
