AtomNotificationsTestView = require './atom-notifications-test-view'
{CompositeDisposable} = require 'atom'

module.exports = AtomNotificationsTest =

  activate: ->

    # Events subscribed to in atom's system can be easily cleaned up with a CompositeDisposable
    @subscriptions = new CompositeDisposable

    # Register command that toggles this view
    @subscriptions.add atom.commands.add 'atom-workspace', 'atom-notifications-test:toggle': => @toggle()

  deactivate: ->
    @subscriptions.dispose()


  toggle: ->
    console.log 'AtomNotificationsTest was toggled!'
    hipsterText = "Crucifix cronut cornhole Vice distillery, skateboard biodiesel chillwave hashtag Truffaut Helvetica gastropub cray trust fund ennui. High Life whatever salvia swag. Kitsch letterpress Pinterest"
    atom.notifications.addSuccess 'success', detail: hipsterText
    atom.notifications.addInfo 'Info', detail: hipsterText
    atom.notifications.addWarning 'Warning', detail: hipsterText
    atom.notifications.addError 'Error', detail: hipsterText
    atom.notifications.addFatalError 'Fatal Error', detail: hipsterText
