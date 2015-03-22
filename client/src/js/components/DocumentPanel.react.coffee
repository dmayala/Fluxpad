React = require 'react'

class DocumentPanel extends React.Component

  update: (e) =>
    @props.onInputChange e.currentTarget.value

  render: ->
    (<div id="main-region" className="col-xs-12 maxheight">
      <form className="maxheight">
        <div className="form-group">
          <input type="text" onChange={@onChange} className="form-control" value={@props.document.title} />
        </div>
        <div className="form-group notepad" >
          <textarea type="text" className="form-control" value={@props.document.data} onChange={@update}></textarea>
        </div>
        <button type="submit" className="btn btn-default">Save</button>
      </form>
    </div>)


module.exports = DocumentPanel
