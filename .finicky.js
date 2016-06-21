finicky.setDefaultBrowser('com.google.Chrome')

// Medium
finicky.onUrl(function(url, opts) {
    if (url.match(/^https?:\/\/medium\.com/)) {
        return {
            bundleIdentifier: 'br.com.guilhermerambo.Mediunic'
        }
    }
});
