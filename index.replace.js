var ghost = require('./core'),
    errors = require('./core/server/errors');

ghost()
.then(function (app) {

    var settings = require('./core/server/api').settings;

    settings
        .read({key: 'activeTheme', context: {internal: true}})
        .then(function (result) {

            try {
                require('./content/themes/' + result.settings[0].value + '/index')();
            }
            catch (e) {
                //No custom index found, or it wasn't a proper module.
            }

        });

    //app.start was added to master, but not present in 0.5.0 initially.
    if(app.start) { app.start(); }
})
.catch(function (err) {
    errors.logErrorAndExit(err, err.context, err.help);
});
