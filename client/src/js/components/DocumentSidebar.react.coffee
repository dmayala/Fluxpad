React = require 'react/addons'
Actions = require '../actions/Actions'
cx = React.addons.classSet

DocumentSidebar = React.createClass
  _onClick: (i) -> Actions.setCurrentDocument i

  render: ->
    documents = @props.documents.map (doc, i) =>
      <li className={ cx active: @props.selected is i } onClick={ @_onClick.bind(@, i) } key={i}><a href="#">{ doc.title }</a></li>

    (<div className="navbar navbar-default navbar-fixed-top">
      <div className="navbar-header">
        <button type="button" className="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
          <span className="icon-bar"></span>
          <span className="icon-bar"></span>
          <span className="icon-bar"></span>
        </button>
        <a className="navbar-brand">Fluxpad v0.0.1 </a>
      </div>
      <div className="navbar-collapse collapse navbar-responsive-collapse">
        <ul className="nav navbar-nav">
          { documents }
        </ul>
      </div>
    </div>)

module.exports = DocumentSidebar
